//
//  CustomButtonType.swift
//
//
//  Created by Coby Kim on 5/26/24.
//

import SwiftUI

public enum CustomButtonType {
    case solid, outlined, borderless
}

public enum CustomButtonUsage {
    case primary, secondary, tertiary, distructive, disabled
}

public enum CustomButtonSize {
    case xlarge, large, medium, small
    
    var height: CGFloat {
        switch self {
        case .xlarge:
            return 56
        case .large:
            return 48
        case .medium:
            return 40
        case .small:
            return 32
        }
    }
}

public enum CustomButtonContentsType {
    case text, withIcon, icon, trailing
}
