//
//  Semantic.swift
//  
//
//  Created by Coby Kim on 5/26/24.
//

import SwiftUI

extension Color {
    
    // Static
    public static let staticWhite = Color.common100
    public static let staticBlack = Color.common0
    
    // Label
    public static let labelNormal: Color = Color.coolNeutral10
    public static let labelStrong: Color = Color.common0
    public static let labelNeutral: Color = Color.coolNeutral22.opacity(0.88)
    public static let labelAlternative: Color = Color.coolNeutral25.opacity(0.61)
    public static let labelAssistive: Color = Color.coolNeutral25.opacity(0.28)
    public static let labelDisable: Color = Color.coolNeutral25.opacity(0.16)
    
    // Background
    public static let backgroundNormalNormal: Color = Color.common100
    public static let backgroundNormalAlternative: Color = Color.coolNeutral99
    public static let backgroundElevatedNormal: Color = Color.common100
    public static let backgroundElevatedAlternative: Color = Color.coolNeutral99
    
    // Interaction
    public static let interactionInactive: Color = Color.coolNeutral70
    public static let interactionDisable: Color = Color.coolNeutral98
    
    // Line
    public static let lineNormalNormal: Color = Color.coolNeutral50.opacity(0.22)
    public static let lineNormalNeutral: Color = Color.coolNeutral50.opacity(0.16)
    public static let lineNormalAlternative: Color = Color.coolNeutral50.opacity(0.08)
    public static let lineSolidNormal: Color = Color.coolNeutral96
    public static let lineSolidNeutral: Color = Color.coolNeutral97
    public static let lineSolidAlternative: Color = Color.coolNeutral98
    
    // Status
    public static let statusPositive: Color = Color.green50
    public static let statusCautionary: Color = Color.orange50
    public static let statusNegative: Color = Color.red50
    
    // Accent
    public static let accentLime: Color = Color.lime50
    public static let accentCyan: Color = Color.cyan50
    public static let accentLightBlue: Color = Color.lightBlue50
    public static let accentViolet: Color = Color.violet50
    public static let accentPurple: Color = Color.purple50
    public static let accentPink: Color = Color.pink50
    
    // Inverse
    public static let inversePrimary: Color = Color.blue60
    public static let inverseBackground: Color = Color.coolNeutral15
    public static let inverseLabel: Color = Color.coolNeutral99
    
    // Fill
    public static let fillNormal: Color = Color.coolNeutral50.opacity(0.08)
    public static let fillStrong: Color = Color.coolNeutral50.opacity(0.16)
    public static let fillAlternative: Color = Color.coolNeutral50.opacity(0.05)
    
    // Material
    public static let meterialDimmer: Color = Color.coolNeutral10.opacity(0.52)
    
    // Shadow
    public static let shadowNormal: Color = Color.staticBlack.opacity(0.16)
    public static let shadowEmphasize: Color = Color.staticBlack.opacity(0.22)
    public static let shadowStrong: Color = Color.staticBlack.opacity(0.22)
    public static let shadowHeavy: Color = Color.staticBlack.opacity(0.28)
}
