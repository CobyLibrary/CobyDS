//
//  TopBarView.swift
//
//
//  Created by Coby on 6/9/24.
//

import SwiftUI

public struct TopBarView: View {
    
    public enum ContentType {
        case none, text, left, icon
    }
    
    public enum BarType {
        case filled, underlined, transParents
    }
    
    private let barType: BarType
    private let leftSide: ContentType
    private let leftTitle: String
    private let leftIcon: Image?
    private let leftAction: () -> Void
    private let title: String
    private let rightSide: ContentType
    private let rightTitle: String
    private let rightIcon: Image?
    private let rightAction: () -> Void
    
    public init(
        barType: BarType = .filled,
        leftSide: ContentType = .left,
        leftTitle: String = "",
        leftIcon: Image? = nil,
        leftAction: @escaping () -> Void = {},
        title: String = "",
        rightSide: ContentType = .none,
        rightTitle: String = "",
        rightIcon: Image? = nil,
        rightAction: @escaping () -> Void = {}
    ) {
        self.barType = barType
        self.leftSide = leftSide
        self.leftTitle = leftTitle
        self.leftIcon = leftIcon
        self.leftAction = leftAction
        self.title = title
        self.rightSide = rightSide
        self.rightTitle = rightTitle
        self.rightIcon = rightIcon
        self.rightAction = rightAction
    }
    
    public var body: some View {
        HStack {
            BarContentView(
                contentType: self.leftSide,
                title: self.leftTitle,
                icon: self.leftIcon,
                action: self.leftAction
            )
            
            Spacer()
            
            BarContentView(
                contentType: self.rightSide,
                title: self.rightTitle,
                icon: self.rightIcon,
                action: self.rightAction
            )
        }
        .background(barType == .transParents ? Color.clear : Color.backgroundNormalNormal)
        .overlay(
            Rectangle()
                .frame(height: 1)
                .foregroundColor(barType == .underlined ? Color.lineNormalNormal : Color.clear)
            , alignment: .bottom
        )
        .overlay(
            Text(self.title)
                .font(.pretendard(size: 18, weight: .bold))
                .foregroundColor(Color.labelNormal)
            , alignment: .center
        )
    }
    
    @ViewBuilder
    func BarContentView(
        contentType: ContentType,
        title: String = "",
        icon: Image? = nil,
        action: @escaping () -> Void = {}
    ) -> some View {
        Group {
            switch contentType {
            case .none:
                Rectangle()
                    .fill(Color.white)
                    .frame(width: 40, height: 40)
            case .text:
                Text(title)
                    .font(.pretendard(size: 20, weight: .bold))
                    .foregroundColor(Color.labelNormal)
                    .padding(.horizontal, 16)
                    .padding(.vertical, 8)
            case .left:
                Image("back", bundle: .module)
                    .resizable()
                    .frame(width: 24, height: 24)
                    .foregroundColor(Color.labelNormal)
                    .padding(8)
            case .icon:
                if let icon = icon {
                    icon
                        .resizable()
                        .frame(width: 24, height: 24)
                        .foregroundColor(Color.labelNormal)
                        .padding(8)
                } else {
                    Rectangle()
                        .fill(Color.white)
                        .frame(width: 40, height: 40)
                }
            }
        }
        .padding(8)
        .onTapGesture {
            action()
        }
    }
}

#Preview {
    VStack {
        TopBarView(
            barType: .underlined,
            leftSide: .text,
            leftTitle: "확인",
            title: "제목"
        )
        
        TopBarView(
            barType: .underlined,
            rightSide: .icon,
            rightIcon: Image("forward", bundle: .module),
            rightAction: { }
        )
    }
}
