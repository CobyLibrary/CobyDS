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
    private let leftIcon: UIImage?
    private let leftAction: () -> Void
    private let title: String
    private let rightSide: ContentType
    private let rightTitle: String
    private let rightIcon: UIImage?
    private let rightAction: () -> Void
    
    public init(
        barType: BarType = .filled,
        leftSide: ContentType = .left,
        leftTitle: String = "",
        leftIcon: UIImage? = nil,
        leftAction: @escaping () -> Void = {},
        title: String = "",
        rightSide: ContentType = .none,
        rightTitle: String = "",
        rightIcon: UIImage? = nil,
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
                .font(.pretendard(size: 20, weight: .semibold))
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
        icon: UIImage? = nil,
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
                    .font(.pretendard(size: 24, weight: .bold))
                    .foregroundColor(Color.labelNormal)
                    .padding(.horizontal, BaseSize.horizantalPadding)
            case .text:
                Text(title)
                    .font(.pretendard(size: 17, weight: .medium))
                    .foregroundColor(Color.labelNormal)
                    .padding(.horizontal, BaseSize.horizantalPadding)
            case .left:
                Image(uiImage: UIImage.icBack)
                    .resizable()
                    .frame(width: 24, height: 24)
                    .foregroundColor(Color.labelNormal)
                    .padding(.horizontal, 16)
            case .icon:
                if let icon = icon {
                    Image(uiImage: icon)
                        .resizable()
                        .frame(width: 24, height: 24)
                        .foregroundColor(Color.labelNormal)
                        .padding(.horizontal, 16)
                } else {
                    Rectangle()
                        .fill(self.barType == .transParents ? Color.clear : Color.backgroundNormalNormal)
                        .frame(width: 40, height: 40)
                }
            case .iconInverse:
                if let icon = icon {
                    Image(uiImage: icon)
                        .resizable()
                        .frame(width: 24, height: 24)
                        .foregroundColor(Color.inverseLabel)
                        .padding(4)
                        .background {
                            Circle()
                                .fill(Color.inverseBackground.opacity(0.7))
                        }
                        .padding(.horizontal, 12)
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
            leftIcon: UIImage.icBack,
            rightSide: .iconInverse,
            rightIcon: UIImage.icClose,
            rightAction: { }
        )
        
        TopBarView(
            barType: .transParents,
            leftSide: .iconInverse,
            leftIcon: UIImage.icClose,
            rightSide: .icon,
            rightIcon: UIImage.icClose,
            rightAction: { }
        )
        
        TopBarView(
            barType: .underlined,
            leftSide: .title,
            leftTitle: "확인",
            title: "제목",
            rightSide: .icon,
            rightIcon: UIImage.icForward,
            rightAction: { }
        )
        
        TopBarView(
            barType: .underlined,
            leftSide: .text,
            leftTitle: "확인",
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
