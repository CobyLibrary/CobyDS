//
//  Primary.swift
//
//
//  Created by Coby on 6/9/24.
//

import SwiftUI

extension Color {
    
    // Blue
    public static var blueNormal: Color {
        return Color(UIColor { traitCollection in
            switch traitCollection.userInterfaceStyle {
            case .dark:
                return UIColor(self.blue60)
            default:
                return UIColor(self.blue50)
            }
        })
    }
    
    public static var blueStrong: Color {
        return Color(UIColor { traitCollection in
            switch traitCollection.userInterfaceStyle {
            case .dark:
                return UIColor(self.blue55)
            default:
                return UIColor(self.blue45)
            }
        })
    }
    
    public static var blueHeavy: Color {
        return Color(UIColor { traitCollection in
            switch traitCollection.userInterfaceStyle {
            case .dark:
                return UIColor(self.blue50)
            default:
                return UIColor(self.blue40)
            }
        })
    }
    
    // Red
    public static var redNormal: Color {
        return Color(UIColor { traitCollection in
            switch traitCollection.userInterfaceStyle {
            case .dark:
                return UIColor(self.red60)
            default:
                return UIColor(self.red50)
            }
        })
    }
    
    public static var redHeavy: Color {
        return Color(UIColor { traitCollection in
            switch traitCollection.userInterfaceStyle {
            case .dark:
                return UIColor(self.red50)
            default:
                return UIColor(self.red40)
            }
        })
    }
    
    // Green
    public static var greenNormal: Color {
        return Color(UIColor { traitCollection in
            switch traitCollection.userInterfaceStyle {
            case .dark:
                return UIColor(self.green60)
            default:
                return UIColor(self.green50)
            }
        })
    }
    
    public static var greenHeavy: Color {
        return Color(UIColor { traitCollection in
            switch traitCollection.userInterfaceStyle {
            case .dark:
                return UIColor(self.green50)
            default:
                return UIColor(self.green40)
            }
        })
    }
    
    // Orange
    public static var orangeNormal: Color {
        return Color(UIColor { traitCollection in
            switch traitCollection.userInterfaceStyle {
            case .dark:
                return UIColor(self.orange60)
            default:
                return UIColor(self.orange50)
            }
        })
    }
    
    public static var orangeHeavy: Color {
        return Color(UIColor { traitCollection in
            switch traitCollection.userInterfaceStyle {
            case .dark:
                return UIColor(self.orange50)
            default:
                return UIColor(self.orange40)
            }
        })
    }
    
    // RedOrange
    public static var redOrangeNormal: Color {
        return Color(UIColor { traitCollection in
            switch traitCollection.userInterfaceStyle {
            case .dark:
                return UIColor(self.redOrange60)
            default:
                return UIColor(self.redOrange50)
            }
        })
    }
    
    public static var redOrangeHeavy: Color {
        return Color(UIColor { traitCollection in
            switch traitCollection.userInterfaceStyle {
            case .dark:
                return UIColor(self.redOrange50)
            default:
                return UIColor(self.redOrange40)
            }
        })
    }
    
    // Lime
    public static var limeNormal: Color {
        return Color(UIColor { traitCollection in
            switch traitCollection.userInterfaceStyle {
            case .dark:
                return UIColor(self.lime60)
            default:
                return UIColor(self.lime50)
            }
        })
    }
    
    public static var limeHeavy: Color {
        return Color(UIColor { traitCollection in
            switch traitCollection.userInterfaceStyle {
            case .dark:
                return UIColor(self.lime50)
            default:
                return UIColor(self.lime40)
            }
        })
    }
    
    // Cyan
    public static var cyanNormal: Color {
        return Color(UIColor { traitCollection in
            switch traitCollection.userInterfaceStyle {
            case .dark:
                return UIColor(self.cyan60)
            default:
                return UIColor(self.cyan50)
            }
        })
    }
    
    public static var cyanHeavy: Color {
        return Color(UIColor { traitCollection in
            switch traitCollection.userInterfaceStyle {
            case .dark:
                return UIColor(self.cyan50)
            default:
                return UIColor(self.cyan40)
            }
        })
    }
    
    // LightBlue
    public static var lightBlueNormal: Color {
        return Color(UIColor { traitCollection in
            switch traitCollection.userInterfaceStyle {
            case .dark:
                return UIColor(self.lightBlue60)
            default:
                return UIColor(self.lightBlue50)
            }
        })
    }
    
    public static var lightBlueHeavy: Color {
        return Color(UIColor { traitCollection in
            switch traitCollection.userInterfaceStyle {
            case .dark:
                return UIColor(self.lightBlue50)
            default:
                return UIColor(self.lightBlue40)
            }
        })
    }
    
    // Violet
    public static var violetNormal: Color {
        return Color(UIColor { traitCollection in
            switch traitCollection.userInterfaceStyle {
            case .dark:
                return UIColor(self.violet60)
            default:
                return UIColor(self.violet50)
            }
        })
    }
    
    public static var violetHeavy: Color {
        return Color(UIColor { traitCollection in
            switch traitCollection.userInterfaceStyle {
            case .dark:
                return UIColor(self.violet50)
            default:
                return UIColor(self.violet40)
            }
        })
    }
    
    // Purple
    public static var purpleNormal: Color {
        return Color(UIColor { traitCollection in
            switch traitCollection.userInterfaceStyle {
            case .dark:
                return UIColor(self.purple60)
            default:
                return UIColor(self.purple50)
            }
        })
    }
    
    public static var purpleHeavy: Color {
        return Color(UIColor { traitCollection in
            switch traitCollection.userInterfaceStyle {
            case .dark:
                return UIColor(self.purple50)
            default:
                return UIColor(self.purple40)
            }
        })
    }
    
    // Pink
    public static var pinkNormal: Color {
        return Color(UIColor { traitCollection in
            switch traitCollection.userInterfaceStyle {
            case .dark:
                return UIColor(self.pink60)
            default:
                return UIColor(self.pink50)
            }
        })
    }
    
    public static var pinkHeavy: Color {
        return Color(UIColor { traitCollection in
            switch traitCollection.userInterfaceStyle {
            case .dark:
                return UIColor(self.pink50)
            default:
                return UIColor(self.pink40)
            }
        })
    }
}
