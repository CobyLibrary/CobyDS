//
//  CBTextFieldType.swift
//
//
//  Created by Coby on 6/9/24.
//

import SwiftUI

public enum TextFieldContentsType {
    case primary, secure, number, secureNumber
}

public enum TextFieldTrailing {
    case none, visibillity, search, textCount
}

public enum TextFieldSize {
    case large, small
    
    public var height: CGFloat {
        switch self {
        case .large:
            return 48
        case .small:
            return 40
        }
    }
}

public enum TextFieldState {
    case enabled, error, focused, disabled
    
    public var borderColor: Color {
        switch self {
        case .error:
            return Color.red50
        case .focused:
            return Color.blue50
        case .enabled, .disabled:
            return Color.lineNormalNormal
        }
    }
    
    public func backgroudColor(isFilled: Bool = false) -> Color {
        if isFilled {
            switch self {
            case .enabled, .error, .focused:
                return Color.backgroundNormalAlternative
            case .disabled:
                return Color.interactionDisable
            }
        } else {
            switch self {
            case .enabled, .error, .focused:
                return Color.backgroundNormalNormal
            case .disabled:
                return Color.interactionDisable
            }
        }
    }
}
