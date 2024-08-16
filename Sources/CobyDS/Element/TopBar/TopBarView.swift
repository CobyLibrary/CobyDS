//
//  TopBarView.swift
//
//
//  Created by Coby on 6/9/24.
//

import SwiftUI

public struct TopBarView: View {
    
    public enum ContentType {
        case none, title, text, left, icon, iconInverse
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
            HStack {
                BarContentView(
                    contentType: self.leftSide,
                    title: self.leftTitle,
                    icon: self.leftIcon,
                    action: self.leftAction
                )
                
                Spacer()
            }
            
            Text(self.title)
                .font(.pretendard(size: 18, weight: .medium))
                .foregroundColor(Color.labelNormal)
            
            HStack {
                Spacer()
                
                BarContentView(
                    contentType: self.rightSide,
                    title: self.rightTitle,
                    icon: self.rightIcon,
                    action: self.rightAction
                )
            }
        }
        .frame(height: 56)
        .background(self.barType == .transParents ? Color.clear : Color.backgroundNormalNormal)
        .overlay(
            Rectangle()
                .frame(height: 1)
                .foregroundColor(self.barType == .underlined ? Color.lineNormalNormal : Color.clear)
            , alignment: .bottom
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
                    .fill(self.barType == .transParents ? Color.clear : Color.backgroundNormalNormal)
                    .frame(width: 40, height: 40)
            case .title:
                Text(title)
                    .font(.pretendard(size: 20, weight: .bold))
                    .foregroundColor(Color.labelNormal)
                    .padding(.horizontal, BaseSize.horizantalPadding)
            case .text:
                Text(title)
                    .font(.pretendard(size: 16, weight: .medium))
                    .foregroundColor(Color.labelNormal)
                    .padding(.horizontal, BaseSize.horizantalPadding)
            case .left:
                Image(.back)
                    .resizable()
                    .frame(width: 24, height: 24)
                    .foregroundColor(Color.labelNormal)
                    .padding(.horizontal, BaseSize.horizantalPadding - 4)
            case .icon:
                if let icon = icon {
                    icon
                        .resizable()
                        .frame(width: 24, height: 24)
                        .foregroundColor(Color.labelNormal)
                        .padding(.horizontal, BaseSize.horizantalPadding - 4)
                } else {
                    Rectangle()
                        .fill(self.barType == .transParents ? Color.clear : Color.backgroundNormalNormal)
                        .frame(width: 40, height: 40)
                }
            case .iconInverse:
                if let icon = icon {
                    icon
                        .resizable()
                        .frame(width: 24, height: 24)
                        .foregroundColor(Color.inverseLabel)
                        .padding(4)
                        .background {
                            Circle()
                                .fill(Color.inverseBackground.opacity(0.7))
                        }
                        .padding(.horizontal, BaseSize.horizantalPadding - 8)
                } else {
                    Rectangle()
                        .fill(self.barType == .transParents ? Color.clear : Color.backgroundNormalNormal)
                        .frame(width: 40, height: 40)
                }
            }
        }
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
            barType: .transParents,
            leftSide: .iconInverse,
            leftIcon: Image(.back),
            rightSide: .iconInverse,
            rightIcon: Image(.close),
            rightAction: { }
        )
        
        TopBarView(
            barType: .transParents,
            leftSide: .iconInverse,
            leftIcon: Image(.close),
            rightSide: .icon,
            rightIcon: Image(.close),
            rightAction: { }
        )
        
        TopBarView(
            barType: .underlined,
            leftSide: .title,
            leftTitle: "확인",
            title: "제목",
            rightSide: .icon,
            rightIcon: Image(.forward),
            rightAction: { }
        )
        
        TopBarView(
            barType: .underlined,
            leftSide: .text,
            leftTitle: "확인",
            title: "제목",
            rightSide: .text,
            rightTitle: "확인",
            rightAction: { }
        )
        
        TopBarView(
            barType: .underlined
        )
        
        TopBarView(
            barType: .underlined,
            leftSide: .none
        )
    }
    .background(Color.red30)
    .loadCustomFonts()
}
