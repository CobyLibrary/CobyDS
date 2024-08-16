//
//  Primary.swift
//
//
//  Created by Coby on 6/9/24.
//

import SwiftUI

extension Color {
    
    private static var currentColorScheme: ColorScheme {
        return UITraitCollection.current.userInterfaceStyle == .dark ? .dark : .light
    }
    
    // Blue
    public static var blueNormal: Color {
        return currentColorScheme == .dark ? Color.blue60 : Color.blue50
    }
    
    public static var blueStrong: Color {
        return currentColorScheme == .dark ? Color.blue55 : Color.blue45
    }
    
    public static var blueHeavy: Color {
        return currentColorScheme == .dark ? Color.blue50 : Color.blue40
    }
    
    // Red
    public static var redNormal: Color {
        return currentColorScheme == .dark ? Color.red60 : Color.red50
    }
    
    public static var redHeavy: Color {
        return currentColorScheme == .dark ? Color.red50 : Color.red40
    }
    
    // Green
    public static var greenNormal: Color {
        return currentColorScheme == .dark ? Color.green60 : Color.green50
    }
    
    public static var greenHeavy: Color {
        return currentColorScheme == .dark ? Color.green50 : Color.green40
    }
    
    // Orange
    public static var orangeNormal: Color {
        return currentColorScheme == .dark ? Color.orange60 : Color.orange50
    }
    
    public static var orangeHeavy: Color {
        return currentColorScheme == .dark ? Color.orange50 : Color.orange40
    }
    
    // RedOrange
    public static var redOrangeNormal: Color {
        return currentColorScheme == .dark ? Color.redOrange60 : Color.redOrange50
    }
    
    public static var redOrangeHeavy: Color {
        return currentColorScheme == .dark ? Color.redOrange50 : Color.redOrange40
    }
    
    // Lime
    public static var limeNormal: Color {
        return currentColorScheme == .dark ? Color.lime60 : Color.lime50
    }
    
    public static var limeHeavy: Color {
        return currentColorScheme == .dark ? Color.lime50 : Color.lime40
    }
    
    // Cyan
    public static var cyanNormal: Color {
        return currentColorScheme == .dark ? Color.cyan60 : Color.cyan50
    }
    
    public static var cyanHeavy: Color {
        return currentColorScheme == .dark ? Color.cyan50 : Color.cyan40
    }
    
    // LightBlue
    public static var lightBlueNormal: Color {
        return currentColorScheme == .dark ? Color.lightBlue60 : Color.lightBlue50
    }
    
    public static var lightBlueHeavy: Color {
        return currentColorScheme == .dark ? Color.lightBlue50 : Color.lightBlue40
    }
    
    // Violet
    public static var violetNormal: Color {
        return currentColorScheme == .dark ? Color.violet60 : Color.violet50
    }
    
    public static var violetHeavy: Color {
        return currentColorScheme == .dark ? Color.violet50 : Color.violet40
    }
    
    // Purple
    public static var purpleNormal: Color {
        return currentColorScheme == .dark ? Color.purple60 : Color.purple50
    }
    
    public static var purpleHeavy: Color {
        return currentColorScheme == .dark ? Color.purple50 : Color.purple40
    }
    
    // Pink
    public static var pinkNormal: Color {
        return currentColorScheme == .dark ? Color.pink60 : Color.pink50
    }
    
    public static var pinkHeavy: Color {
        return currentColorScheme == .dark ? Color.pink50 : Color.pink40
    }
}
