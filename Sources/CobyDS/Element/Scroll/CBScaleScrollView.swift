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
    
    private let topContentHeight: CGFloat
    private let header: Header
    private let content: Content
    
    public init(
        isPresented: Binding<Bool>,
        scale: Binding<CGFloat>,
        isDown: Binding<Bool>,
        topContentHeight: CGFloat = 0.0,
        @ViewBuilder header: () -> Header,
        @ViewBuilder content: () -> Content
    ) {
        self._isPresented = isPresented
        self._scale = scale
        self._isDown = isDown
        self.topContentHeight = topContentHeight
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
                            self.handleDragEnded(value, geometry: geometry)
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
        
        self.isDown = nextOffset - BaseSize.topAreaPadding - 10 < -self.topContentHeight
    }
    
    private func handleDragEnded(_ value: DragGesture.Value, geometry: GeometryProxy) {
        let gestureVelocity = value.predictedEndLocation.y - value.location.y
        self.deceleration = Double(gestureVelocity)
        
        let springAnimation = Animation.spring(response: 0.5, dampingFraction: 0.75, blendDuration: 0.5)
        
        withAnimation(springAnimation) {
            continueAnimation()
            
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
            withAnimation(.spring(response: 0.5, dampingFraction: 0.75, blendDuration: 0.5)) {
                self.offset = 0
            }
        } else if self.offset < self.maxOffset {
            withAnimation(.spring(response: 0.5, dampingFraction: 0.75, blendDuration: 0.5)) {
                self.offset = self.maxOffset
            }
        }
        
        self.isDown = self.offset - BaseSize.topAreaPadding - 10 < -self.topContentHeight
    }
}

#Preview {
    struct PreviewWrapper: View {
        @State var isPresented: Bool = true
        @State var scale: CGFloat = 1.0
        @State var isDown: Bool = false
        
        private let height: CGFloat = 200
        
        var body: some View {
            CBScaleScrollView(
                isPresented: $isPresented,
                scale: $scale,
                isDown: $isDown,
                topContentHeight: height,
                header: {
                    Text("헤더")
                        .frame(maxWidth: .infinity)
                        .frame(height: 150)
                        .background(isDown ? Color.clear : Color.blue.opacity(0.8))
                },
                content: {
                    VStack {
                        ThumbnailEmptyView()
                            .frame(width: BaseSize.screenWidth, height: BaseSize.screenWidth)
                        
                        VStack(alignment: .leading, spacing: 16) {
                            VStack(alignment: .leading, spacing: 4) {
                                Text("제목")
                                    .font(.pretendard(size: 20, weight: .semibold))
                                    .foregroundStyle(Color.labelNormal)
                                
                                Text("날짜")
                                    .font(.pretendard(size: 14, weight: .regular))
                                    .foregroundStyle(Color.labelAlternative)
                            }
                            
                            CBDivider()
                            
                            ForEach(0..<100) { _ in
                                Text("내용이다")
                                    .font(.pretendard(size: 16, weight: .regular))
                                    .foregroundColor(Color.labelNormal)
                                    .multilineTextAlignment(.leading)
                                    .lineLimit(nil)
                                    .fixedSize(horizontal: false, vertical: true)
                            }
                        }
                        .padding(.horizontal, BaseSize.horizantalPadding)
                        .frame(maxWidth: .infinity)
                    }
                    .padding(.bottom, BaseSize.bottomAreaPadding + BaseSize.cellVerticalSpacing)
                }
            )
        }
    }
    return PreviewWrapper().loadCustomFonts()
}
