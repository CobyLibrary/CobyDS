//
//  Primary.swift
//
//
//  Created by Coby on 6/9/24.
//

import SwiftUI

extension Color {
    
    // SwiftUI Environment property to detect color scheme
    @Environment(\.colorScheme) private static var colorScheme
    
    // Blue
    public static var blueNormal: Color {
        return colorScheme == .dark ? Color.blue60 : Color.blue50
    }
    
    public static var blueStrong: Color {
        return colorScheme == .dark ? Color.blue55 : Color.blue45
    }
    
    public static var blueHeavy: Color {
        return colorScheme == .dark ? Color.blue50 : Color.blue40
    }
    
    // Red
    public static var redNormal: Color {
        return colorScheme == .dark ? Color.red60 : Color.red50
    }
    
    public static var redHeavy: Color {
        return colorScheme == .dark ? Color.red50 : Color.red40
    }
    
    // Green
    public static var greenNormal: Color {
        return colorScheme == .dark ? Color.green60 : Color.green50
    }
    
    public static var greenHeavy: Color {
        return colorScheme == .dark ? Color.green50 : Color.green40
    }
    
    // Orange
    public static var orangeNormal: Color {
        return colorScheme == .dark ? Color.orange60 : Color.orange50
    }
    
    public static var orangeHeavy: Color {
        return colorScheme == .dark ? Color.orange50 : Color.orange40
    }
    
    // RedOrange
    public static var redOrangeNormal: Color {
        return colorScheme == .dark ? Color.redOrange60 : Color.redOrange50
    }
    
    public static var redOrangeHeavy: Color {
        return colorScheme == .dark ? Color.redOrange50 : Color.redOrange40
    }
    
    // Lime
    public static var limeNormal: Color {
        return colorScheme == .dark ? Color.lime60 : Color.lime50
    }
    
    public static var limeHeavy: Color {
        return colorScheme == .dark ? Color.lime50 : Color.lime40
    }
    
    // Cyan
    public static var cyanNormal: Color {
        return colorScheme == .dark ? Color.cyan60 : Color.cyan50
    }
    
    public static var cyanHeavy: Color {
        return colorScheme == .dark ? Color.cyan50 : Color.cyan40
    }
    
    // LightBlue
    public static var lightBlueNormal: Color {
        return colorScheme == .dark ? Color.lightBlue60 : Color.lightBlue50
    }
    
    public static var lightBlueHeavy: Color {
        return colorScheme == .dark ? Color.lightBlue50 : Color.lightBlue40
    }
    
    // Violet
    public static var violetNormal: Color {
        return colorScheme == .dark ? Color.violet60 : Color.violet50
    }
    
    public static var violetHeavy: Color {
        return colorScheme == .dark ? Color.violet50 : Color.violet40
    }
    
    // Purple
    public static var purpleNormal: Color {
        return colorScheme == .dark ? Color.purple60 : Color.purple50
    }
    
    public static var purpleHeavy: Color {
        return colorScheme == .dark ? Color.purple50 : Color.purple40
    }
    
    // Pink
    public static var pinkNormal: Color {
        return colorScheme == .dark ? Color.pink60 : Color.pink50
    }
    
    public static var pinkHeavy: Color {
        return colorScheme == .dark ? Color.pink50 : Color.pink40
    }
}
