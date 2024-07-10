//
//  CBButtonType.swift
//
//
//  Created by Coby Kim on 5/26/24.
//

import SwiftUI

public enum CBButtonType {
    case solid, outlined, text
}

public enum CBButtonUsage {
    case primary, secondary, assistive
}

public enum CBButtonSize {
    case large, medium, small
    
    var buttonHeight: CGFloat {
        switch self {
        case .large:
            return 48
        case .medium:
            return 40
        case .small:
            return 32
        }
    }
    
    var fontSize: CGFloat {
        switch self {
        case .large:
            return 16
        case .medium:
            return 14
        case .small:
            return 12
        }
    }
}
