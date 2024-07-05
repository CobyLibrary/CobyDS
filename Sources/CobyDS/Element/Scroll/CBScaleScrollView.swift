//
//  CBScaleScrollView.swift
//
//
//  Created by Coby on 6/9/24.
//

import SwiftUI

public struct CBScaleScrollView<Content: View, Header: View>: View {
    
    @Binding var isPresented: Bool
    @Binding var scale: CGFloat
    @Binding var isDown: Bool
    
    @State private var contentHeight: CGFloat = 0
    @State private var maxOffset: CGFloat = 0.0
    @State private var offset: CGFloat = 0.0
    @State private var dragOffset: CGFloat = 0.0
    @State private var deceleration: Double = 0.0
    
    private let header: Header
    private let content: Content
    
    public init(
        isPresented: Binding<Bool>,
        scale: Binding<CGFloat>,
        isDown: Binding<Bool>,
        @ViewBuilder header: () -> Header,
        @ViewBuilder content: () -> Content
    ) {
        self._isPresented = isPresented
        self._scale = scale
        self._isDown = isDown
        self.header = header()
        self.content = content()
    }
    
    public var body: some View {
        ZStack {
            Color.backgroundNormalAlternative
                .edgesIgnoringSafeArea(.all)
            
            GeometryReader { geometry in
                VStack {
                    self.content
                    
                    Spacer()
                }
                .frame(maxWidth: .infinity)
                .contentShape(Rectangle())
                .background(Color.backgroundNormalNormal)
                .offset(y: self.offset + self.dragOffset)
                .background(
                    GeometryReader { innerGeometry in
                        Color.clear
                            .onAppear {
                                self.contentHeight = innerGeometry.size.height
                                self.maxOffset = min(geometry.size.height - self.contentHeight, 0)
                            }
                    }
                )
                .gesture(
                    DragGesture()
                        .onChanged { value in
                            self.handleDragChanged(value, geometry: geometry)
                        }
                        .onEnded { value in
                            self.handleDragEnded(value)
                        }
                )
            }
            .overlay(
                alignment: .top,
                content: {
                    self.header
                }
            )
            .clipShape(RoundedRectangle(cornerRadius: self.scale == 1 ? 0 : 30))
            .scaleEffect(self.scale)
            .ignoresSafeArea()
        }
    }
    
    private func handleDragChanged(_ value: DragGesture.Value, geometry: GeometryProxy) {
        withAnimation {
            let nextOffset = self.offset + value.translation.height
            
            if nextOffset >= 0 {
                let scaleValue = (value.translation.height - 100) / UIScreen.main.bounds.height
                if 1 - scaleValue > 0.75 && scaleValue > 0 {
                    self.scale = 1 - scaleValue
                    self.dragOffset = 0
                }
            } else if self.scale == 1 {
                if nextOffset > self.maxOffset {
                    self.dragOffset = value.translation.height
                }
            }
            
            self.isDown = nextOffset - BaseSize.topAreaPadding - 10 < -BaseSize.screenWidth
        }
    }
    
    private func handleDragEnded(_ value: DragGesture.Value) {
        withAnimation(.spring()) {
            let gestureVelocity = value.predictedEndLocation.y - value.location.y
            self.deceleration = Double(gestureVelocity)
            self.continueAnimation()
            
            if self.scale < 0.9 {
                self.isPresented = false
            }
            
            self.scale = 1
        }
    }
    
    private func continueAnimation() {
        if self.scale == 1 {
            self.offset += self.dragOffset + CGFloat(self.deceleration * 0.5)
        }
        
        self.dragOffset = 0.0
        self.deceleration = 0.0
        
        if self.offset >= 0 {
            self.offset = 0
        } else if self.offset < self.maxOffset {
            self.offset = self.maxOffset
        }
        
        self.isDown = self.offset - BaseSize.topAreaPadding - 10 < -BaseSize.screenWidth * 1.2
    }
}

#Preview {
    struct PreviewWrapper: View {
        @State var isPresented: Bool = true
        @State var scale: CGFloat = 1.0
        @State var isDown: Bool = true
        
        var body: some View {
            CBScaleScrollView(
                isPresented: $isPresented,
                scale: $scale,
                isDown: $isDown,
                header: {
                    Text("헤더")
                        .frame(maxWidth: .infinity)
                        .background(Color.blue)
                },
                content: {
                    VStack {
                        Text("123")
                        Text("123")
                    }
                    .frame(maxWidth: .infinity)
                    .background(Color.red)
                }
            )
        }
    }
    return PreviewWrapper().loadCustomFonts()
}
