//
//  Semantic.swift
//  
//
//  Created by Coby Kim on 5/26/24.
//

import SwiftUI

extension Color {
    
    private static var currentColorScheme: ColorScheme {
        return UITraitCollection.current.userInterfaceStyle == .dark ? .dark : .light
    }
    
    // Static
    public static let staticWhite = Color.common100
    public static let staticBlack = Color.common0
    
    // Label
    public static var labelNormal: Color {
        return currentColorScheme == .dark ? Color.coolNeutral99 : Color.coolNeutral10
    }
    
    public static var labelStrong: Color {
        return currentColorScheme == .dark ? Color.common100 : Color.common0
    }
    
    public static var labelNeutral: Color {
        return currentColorScheme == .dark ? Color.coolNeutral90.opacity(0.88) : Color.coolNeutral22.opacity(0.88)
    }
    
    public static var labelAlternative: Color {
        return currentColorScheme == .dark ? Color.coolNeutral80.opacity(0.61) : Color.coolNeutral25.opacity(0.61)
    }
    
    public static var labelAssistive: Color {
        return currentColorScheme == .dark ? Color.coolNeutral80.opacity(0.28) : Color.coolNeutral25.opacity(0.28)
    }
    
    public static var labelDisable: Color {
        return currentColorScheme == .dark ? Color.coolNeutral70.opacity(0.16) : Color.coolNeutral25.opacity(0.16)
    }
    
    // Background
    public static var backgroundNormalNormal: Color {
        return currentColorScheme == .dark ? Color.coolNeutral15 : Color.common100
    }
    
    public static var backgroundNormalAlternative: Color {
        return currentColorScheme == .dark ? Color.coolNeutral5 : Color.coolNeutral99
    }
    
    public static var backgroundElevatedNormal: Color {
        return currentColorScheme == .dark ? Color.coolNeutral17 : Color.common100
    }
    
    public static var backgroundElevatedAlternative: Color {
        return currentColorScheme == .dark ? Color.coolNeutral7 : Color.coolNeutral99
    }
    
    // Interaction
    public static var interactionInactive: Color {
        return currentColorScheme == .dark ? Color.coolNeutral40 : Color.coolNeutral70
    }
    
    public static var interactionDisable: Color {
        return currentColorScheme == .dark ? Color.coolNeutral22 : Color.coolNeutral98
    }
    
    // Line
    public static var lineNormalNormal: Color {
        return currentColorScheme == .dark ? Color.coolNeutral50.opacity(0.32) : Color.coolNeutral50.opacity(0.22)
    }
    
    public static var lineNormalNeutral: Color {
        return currentColorScheme == .dark ? Color.coolNeutral50.opacity(0.28) : Color.coolNeutral50.opacity(0.16)
    }
    
    public static var lineNormalAlternative: Color {
        return currentColorScheme == .dark ? Color.coolNeutral50.opacity(0.22) : Color.coolNeutral50.opacity(0.08)
    }
    
    public static var lineSolidNormal: Color {
        return currentColorScheme == .dark ? Color.coolNeutral25 : Color.coolNeutral96
    }
    
    public static var lineSolidNeutral: Color {
        return currentColorScheme == .dark ? Color.coolNeutral23 : Color.coolNeutral97
    }
    
    public static var lineSolidAlternative: Color {
        return currentColorScheme == .dark ? Color.coolNeutral22 : Color.coolNeutral98
    }
    
    // Status
    public static var statusPositive: Color {
        return currentColorScheme == .dark ? Color.green60 : Color.green50
    }
    
    public static var statusCautionary: Color {
        return currentColorScheme == .dark ? Color.orange60 : Color.orange50
    }
    
    public static var statusNegative: Color {
        return currentColorScheme == .dark ? Color.red60 : Color.red50
    }
    
    // Accent
    public static var accentLime: Color {
        return currentColorScheme == .dark ? Color.lime60 : Color.lime50
    }
    
    public static var accentCyan: Color {
        return currentColorScheme == .dark ? Color.cyan60 : Color.cyan50
    }
    
    public static var accentLightBlue: Color {
        return currentColorScheme == .dark ? Color.lightBlue60 : Color.lightBlue50
    }
    
    public static var accentViolet: Color {
        return currentColorScheme == .dark ? Color.violet60 : Color.violet50
    }
    
    public static var accentPurple: Color {
        return currentColorScheme == .dark ? Color.purple60 : Color.purple50
    }
    
    public static var accentPink: Color {
        return currentColorScheme == .dark ? Color.pink60 : Color.pink50
    }
    
    // Inverse
    public static var inversePrimary: Color {
        return currentColorScheme == .dark ? Color.blue50 : Color.blue60
    }
    
    public static var inverseBackground: Color {
        return currentColorScheme == .dark ? Color.common100 : Color.coolNeutral15
    }
    
    public static var inverseLabel: Color {
        return currentColorScheme == .dark ? Color.coolNeutral10 : Color.coolNeutral99
    }
    
    // Fill
    public static var fillNormal: Color {
        return currentColorScheme == .dark ? Color.coolNeutral50.opacity(0.22) : Color.coolNeutral50.opacity(0.08)
    }
    
    public static var fillStrong: Color {
        return currentColorScheme == .dark ? Color.coolNeutral50.opacity(0.28) : Color.coolNeutral50.opacity(0.16)
    }
    
    public static var fillAlternative: Color {
        return currentColorScheme == .dark ? Color.coolNeutral50.opacity(0.12) : Color.coolNeutral50.opacity(0.05)
    }
    
    // Material
    public static var meterialDimmer: Color {
        return currentColorScheme == .dark ? Color.coolNeutral10.opacity(0.74) : Color.coolNeutral10.opacity(0.52)
    }
    
    // Shadow
    public static var shadowNormal: Color {
        return currentColorScheme == .dark ? Color.staticWhite.opacity(0.16) : Color.staticBlack.opacity(0.16)
    }
    
    public static var shadowEmphasize: Color {
        return currentColorScheme == .dark ? Color.staticWhite.opacity(0.22) : Color.staticBlack.opacity(0.22)
    }
    
    public static var shadowStrong: Color {
        return currentColorScheme == .dark ? Color.staticWhite.opacity(0.22) : Color.staticBlack.opacity(0.22)
    }
    
    public static var shadowHeavy: Color {
        return currentColorScheme == .dark ? Color.staticWhite.opacity(0.28) : Color.staticBlack.opacity(0.28)
    }
}
