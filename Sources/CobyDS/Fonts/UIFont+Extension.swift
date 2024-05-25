//
//  UIFont+Extension.swift
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
            return "Pretendard-Regular"
        case .medium:
            return "Pretendard-Medium"
        case .semibold:
            return "Pretendard-SemiBold"
        case .bold:
            return "Pretendard-Bold"
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

extension Font {
    public static func pretendard(size: CGFloat, weight: PretendardWeight = .regular) -> Font {
        return .custom(weight.fontName, size: size)
    }
}

extension Font {
    public static func pretendardFixedSize(size: CGFloat, weight: PretendardWeight = .regular) -> Font {
        return .custom(weight.fontName, fixedSize: size)
    }
}

public extension View {
    /// Attach this to any Xcode Preview's view to have custom fonts displayed
    /// Note: Not needed for the actual app
    func loadCustomFonts() -> some View {
        Fonts.registerCustomFonts()
        return self
    }
}
