//
//  CBButtonStyle.swift
//  
//
//  Created by Coby Kim on 5/26/24.
//

import SwiftUI

public struct CBButtonStyle: ButtonStyle {
    
    var foregroundColor: Color {
        switch self.buttonType {
        case .solid:
            return self.disable ? Color.labelAssistive : Color.staticWhite
        case .outlined:
            switch buttonUsage {
            case .primary:
                return self.disable ? Color.labelDisable : Color.primaryNormal
            case .secondary:
                return self.disable ? Color.labelDisable : Color.primaryNormal
            case .assistive:
                return self.disable ? Color.labelDisable : Color.labelNormal
            }
        case .text:
            switch self.buttonUsage {
            case .primary:
                return self.disable ? Color.labelDisable : Color.primaryNormal
            default:
                return self.disable ? Color.labelDisable : Color.labelAlternative
            }
        }
    }
        
    var backgroundColor: Color {
        switch self.buttonType {
        case .solid:
            return self.disable ? Color.interactionDisable : Color.primaryNormal
        case .outlined:
            return Color.clear
        case .text:
            return Color.clear
        }
    }
        
    var borderColor: Color {
        switch self.buttonType {
        case .solid:
            return Color.clear
        case .outlined:
            switch self.buttonUsage {
            case .primary:
                return self.disable ? Color.lineNormalNormal : Color.primaryNormal
            default:
                return Color.lineNormalNormal
            }
        case .text:
            return Color.clear
        }
    }
    
    var pressedColor: Color {
        switch self.buttonUsage {
        case .assistive:
            return Color.staticBlack.opacity(0.2)
        default:
            return Color.primaryNormal.opacity(0.2)
        }
    }
    
    private let buttonType: CBButtonType
    private let buttonUsage: CBButtonUsage
    private let buttonSize: CBButtonSize
    private let disable: Bool
    
    public init(
        buttonType: CBButtonType = .solid,
        buttonUsage: CBButtonUsage = .primary,
        buttonSize: CBButtonSize = .large,
        disable: Bool = false
    ) {
        self.buttonType = buttonType
        self.buttonUsage = buttonUsage
        self.buttonSize = buttonSize
        self.disable = disable
    }
    
    public func makeBody(configuration: Self.Configuration) -> some View {
        configuration.label
            .font(.pretendard(size: self.buttonSize.fontSize, weight: .bold))
            .foregroundColor(self.foregroundColor)
            .frame(maxWidth: .infinity, minHeight: self.buttonSize.buttonHeight)
            .background(backgroundColor.cornerRadius(10))
            .overlay(
                RoundedRectangle(cornerRadius: 10)
                    .strokeBorder(self.borderColor, lineWidth: 1)
            )
            .overlay(
                (configuration.isPressed && !self.disable ? self.pressedColor : Color.clear)
                    .cornerRadius(10)
            )
    }
}

#Preview {
    VStack {
        Button {
            print("Clicked")
        } label: {
            Text("버튼 테스트")
        }
        .buttonStyle(CBButtonStyle())
        
        Button {
            print("Clicked")
        } label: {
            Text("버튼 테스트")
        }
        .buttonStyle(CBButtonStyle(disable: true))
        
        Button {
            print("Clicked")
        } label: {
            Text("버튼 테스트")
        }
        .buttonStyle(CBButtonStyle(buttonType: .outlined))
        
        Button {
            print("Clicked")
        } label: {
            Text("버튼 테스트")
        }
        .buttonStyle(CBButtonStyle(buttonType: .text))
    }
    .loadCustomFonts()
}
