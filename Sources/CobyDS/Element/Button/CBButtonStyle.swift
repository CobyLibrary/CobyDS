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
            return self.isDisabled ? Color.labelAssistive : Color.staticWhite
        case .outlined:
            switch buttonUsage {
            case .primary:
                return self.isDisabled ? Color.labelDisable : Color.labelNeutral
            case .secondary:
                return self.isDisabled ? Color.labelDisable : Color.labelAlternative
            case .assistive:
                return self.isDisabled ? Color.labelDisable : Color.labelAssistive
            }
        case .text:
            switch self.buttonUsage {
            case .primary:
                return self.isDisabled ? Color.labelDisable : self.buttonColor
            default:
                return self.isDisabled ? Color.labelDisable : Color.labelAlternative
            }
        }
    }
        
    var backgroundColor: Color {
        switch self.buttonType {
        case .solid:
            return self.isDisabled ? Color.interactionDisable : self.buttonColor
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
            return Color.lineNormalNormal
        case .text:
            return Color.clear
        }
    }
    
    var pressedColor: Color {
        switch self.buttonUsage {
        case .assistive:
            return Color.staticBlack.opacity(0.2)
        default:
            return self.buttonColor.opacity(0.2)
        }
    }
    
    private let isDisabled: Bool
    private let isBlur: Bool
    private let buttonType: CBButtonType
    private let buttonUsage: CBButtonUsage
    private let buttonSize: CBButtonSize
    private let buttonColor: Color
    
    public init(
        isDisabled: Bool = false,
        isBlur: Bool = false,
        buttonType: CBButtonType = .solid,
        buttonUsage: CBButtonUsage = .primary,
        buttonSize: CBButtonSize = .large,
        buttonColor: Color = Color.blueNormal
    ) {
        self.isDisabled = isDisabled
        self.isBlur = isBlur
        self.buttonType = buttonType
        self.buttonUsage = buttonUsage
        self.buttonSize = buttonSize
        self.buttonColor = buttonColor
    }
    
    public func makeBody(configuration: Self.Configuration) -> some View {
        configuration.label
            .font(.pretendard(size: self.buttonSize.fontSize, weight: .medium))
            .foregroundColor(self.foregroundColor)
            .frame(maxWidth: .infinity, minHeight: self.buttonSize.buttonHeight)
            .background(backgroundColor.cornerRadius(10))
            .shadow(color: self.isBlur ? Color.white : Color.clear, radius: 24.0, x: 0.0, y: -12.0)
            .overlay(
                RoundedRectangle(cornerRadius: 10)
                    .strokeBorder(self.borderColor, lineWidth: 1)
            )
            .overlay(
                (configuration.isPressed && !self.isDisabled ? self.pressedColor : Color.clear)
                    .cornerRadius(10)
            )
    }
}

#Preview {
    VStack {
        Spacer()
        
        Button {
            print("Clicked")
        } label: {
            Text("버튼 테스트")
        }
        .buttonStyle(CBButtonStyle(isBlur: true))
        
        Button {
            print("Clicked")
        } label: {
            Text("버튼 테스트")
        }
        .buttonStyle(CBButtonStyle(isDisabled: true))
        
        Button {
            print("Clicked")
        } label: {
            Text("버튼 테스트")
        }
        .buttonStyle(
            CBButtonStyle(
                buttonType: .outlined,
                buttonUsage: .primary,
                buttonSize: .large,
                buttonColor: Color.lineNormalNormal
            )
        )
        
        Button {
            print("Clicked")
        } label: {
            Text("버튼 테스트")
        }
        .buttonStyle(
            CBButtonStyle(
                buttonType: .outlined,
                buttonUsage: .secondary,
                buttonSize: .medium,
                buttonColor: Color.lineNormalNormal
            )
        )
        
        Button {
            print("Clicked")
        } label: {
            Text("버튼 테스트")
        }
        .buttonStyle(
            CBButtonStyle(
                buttonType: .outlined,
                buttonUsage: .assistive,
                buttonSize: .small,
                buttonColor: Color.lineNormalNormal
            )
        )
        
        Button {
            print("Clicked")
        } label: {
            Text("버튼 테스트")
        }
        .buttonStyle(CBButtonStyle(buttonType: .text))
        
        Spacer()
    }
    .background(Color.backgroundNormalNormal)
}
