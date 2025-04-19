//
//  Font+Extension.swift
//
//
//  Created by Coby Kim on 5/26/24.
//

import SwiftUI

public enum PretendardWeight: CaseIterable {
    case regular, medium, semibold, bold
    
    public var fontName: String {
        switch self {
        case .regular:
            return "PretendardJP-Regular"
        case .medium:
            return "PretendardJP-Medium"
        case .semibold:
            return "PretendardJP-SemiBold"
        case .bold:
            return "PretendardJP-Bold"
        }
    }
}

public struct Fonts {
    public static func registerCustomFonts() {
        PretendardWeight.allCases.forEach { font in
            guard let url = Bundle.module.url(forResource: font.fontName, withExtension: "otf") else { return }
            CTFontManagerRegisterFontsForURL(url as CFURL, .process, nil)
        }
    }
}

// Register fonts automatically when the app starts
extension Font {
    private static let registerFonts: Void = {
        Fonts.registerCustomFonts()
    }()
    
    public static func pretendard(size: CGFloat, weight: PretendardWeight = .regular) -> Font {
        _ = registerFonts
        return .custom(weight.fontName, size: size)
    }
    
    public static func pretendardFixedSize(size: CGFloat, weight: PretendardWeight = .regular) -> Font {
        _ = registerFonts
        return .custom(weight.fontName, fixedSize: size)
    }
}
