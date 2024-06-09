//
//  Semantic.swift
//  
//
//  Created by Coby Kim on 5/26/24.
//

import SwiftUI

extension Color {
    
    // Static
    public static var staticWhite: Color {
        return Color(UIColor { traitCollection in
            switch traitCollection.userInterfaceStyle {
            case .dark:
                return UIColor(self.common100)
            default:
                return UIColor(self.common100)
            }
        })
    }
    
    public static var staticBlack: Color {
        return Color(UIColor { traitCollection in
            switch traitCollection.userInterfaceStyle {
            case .dark:
                return UIColor(self.common0)
            default:
                return UIColor(self.common0)
            }
        })
    }
    
    // Label
    public static var labelNormal: Color {
        return Color(UIColor { traitCollection in
            switch traitCollection.userInterfaceStyle {
            case .dark:
                return UIColor(self.coolNeutral99)
            default:
                return UIColor(self.coolNeutral10)
            }
        })
    }
    
    public static var labelStrong: Color {
        return Color(UIColor { traitCollection in
            switch traitCollection.userInterfaceStyle {
            case .dark:
                return UIColor(self.common100)
            default:
                return UIColor(self.common0)
            }
        })
    }
    
    public static var labelNeutral: Color {
        return Color(UIColor { traitCollection in
            switch traitCollection.userInterfaceStyle {
            case .dark:
                return UIColor(self.coolNeutral90.opacity(0.88))
            default:
                return UIColor(self.coolNeutral22.opacity(0.88))
            }
        })
    }
    
    public static var labelAlternative: Color {
        return Color(UIColor { traitCollection in
            switch traitCollection.userInterfaceStyle {
            case .dark:
                return UIColor(self.coolNeutral80.opacity(0.61))
            default:
                return UIColor(self.coolNeutral25.opacity(0.61))
            }
        })
    }
    
    public static var labelAssistive: Color {
        return Color(UIColor { traitCollection in
            switch traitCollection.userInterfaceStyle {
            case .dark:
                return UIColor(self.coolNeutral80.opacity(0.28))
            default:
                return UIColor(self.coolNeutral25.opacity(0.28))
            }
        })
    }
    
    public static var labelDisable: Color {
        return Color(UIColor { traitCollection in
            switch traitCollection.userInterfaceStyle {
            case .dark:
                return UIColor(self.coolNeutral70.opacity(0.16))
            default:
                return UIColor(self.coolNeutral25.opacity(0.16))
            }
        })
    }
    
    // Background
    public static var backgroundNormalNormal: Color {
        return Color(UIColor { traitCollection in
            switch traitCollection.userInterfaceStyle {
            case .dark:
                return UIColor(self.coolNeutral15)
            default:
                return UIColor(self.common100)
            }
        })
    }
    
    public static var backgroundNormalAlternative: Color {
        return Color(UIColor { traitCollection in
            switch traitCollection.userInterfaceStyle {
            case .dark:
                return UIColor(self.coolNeutral5)
            default:
                return UIColor(self.coolNeutral99)
            }
        })
    }
    
    public static var backgroundElevatedNormal: Color {
        return Color(UIColor { traitCollection in
            switch traitCollection.userInterfaceStyle {
            case .dark:
                return UIColor(self.coolNeutral17)
            default:
                return UIColor(self.common100)
            }
        })
    }
    
    public static var backgroundElevatedAlternative: Color {
        return Color(UIColor { traitCollection in
            switch traitCollection.userInterfaceStyle {
            case .dark:
                return UIColor(self.coolNeutral7)
            default:
                return UIColor(self.coolNeutral99)
            }
        })
    }
    
    // Interaction
    public static var interactionInactive: Color {
        return Color(UIColor { traitCollection in
            switch traitCollection.userInterfaceStyle {
            case .dark:
                return UIColor(self.coolNeutral40)
            default:
                return UIColor(self.coolNeutral70)
            }
        })
    }
    
    public static var interactionDisable: Color {
        return Color(UIColor { traitCollection in
            switch traitCollection.userInterfaceStyle {
            case .dark:
                return UIColor(self.coolNeutral22)
            default:
                return UIColor(self.coolNeutral98)
            }
        })
    }
    
    // Line
    public static var lineNormalNormal: Color {
        return Color(UIColor { traitCollection in
            switch traitCollection.userInterfaceStyle {
            case .dark:
                return UIColor(self.coolNeutral50.opacity(0.32))
            default:
                return UIColor(self.coolNeutral50.opacity(0.22))
            }
        })
    }
    
    public static var lineNormalNeutral: Color {
        return Color(UIColor { traitCollection in
            switch traitCollection.userInterfaceStyle {
            case .dark:
                return UIColor(self.coolNeutral50.opacity(0.28))
            default:
                return UIColor(self.coolNeutral50.opacity(0.16))
            }
        })
    }
    
    public static var lineNormalAlternative: Color {
        return Color(UIColor { traitCollection in
            switch traitCollection.userInterfaceStyle {
            case .dark:
                return UIColor(self.coolNeutral50.opacity(0.22))
            default:
                return UIColor(self.coolNeutral50.opacity(0.08))
            }
        })
    }
    
    public static var lineSolidNormal: Color {
        return Color(UIColor { traitCollection in
            switch traitCollection.userInterfaceStyle {
            case .dark:
                return UIColor(self.coolNeutral25)
            default:
                return UIColor(self.coolNeutral96)
            }
        })
    }
    
    public static var lineSolidNeutral: Color {
        return Color(UIColor { traitCollection in
            switch traitCollection.userInterfaceStyle {
            case .dark:
                return UIColor(self.coolNeutral23)
            default:
                return UIColor(self.coolNeutral97)
            }
        })
    }
    
    public static var lineSolidAlternative: Color {
        return Color(UIColor { traitCollection in
            switch traitCollection.userInterfaceStyle {
            case .dark:
                return UIColor(self.coolNeutral22)
            default:
                return UIColor(self.coolNeutral98)
            }
        })
    }
    
    // Status
    public static var statusPositive: Color {
        return Color(UIColor { traitCollection in
            switch traitCollection.userInterfaceStyle {
            case .dark:
                return UIColor(self.green60)
            default:
                return UIColor(self.green50)
            }
        })
    }
    
    public static var statusCautionary: Color {
        return Color(UIColor { traitCollection in
            switch traitCollection.userInterfaceStyle {
            case .dark:
                return UIColor(self.orange60)
            default:
                return UIColor(self.orange50)
            }
        })
    }
    
    public static var statusNegative: Color {
        return Color(UIColor { traitCollection in
            switch traitCollection.userInterfaceStyle {
            case .dark:
                return UIColor(self.red60)
            default:
                return UIColor(self.red50)
            }
        })
    }
    
    // Accent
    public static var accentLime: Color {
        return Color(UIColor { traitCollection in
            switch traitCollection.userInterfaceStyle {
            case .dark:
                return UIColor(self.lime60)
            default:
                return UIColor(self.lime50)
            }
        })
    }
    
    public static var accentCyan: Color {
        return Color(UIColor { traitCollection in
            switch traitCollection.userInterfaceStyle {
            case .dark:
                return UIColor(self.cyan60)
            default:
                return UIColor(self.cyan50)
            }
        })
    }
    
    public static var accentLightBlue: Color {
        return Color(UIColor { traitCollection in
            switch traitCollection.userInterfaceStyle {
            case .dark:
                return UIColor(self.lightBlue60)
            default:
                return UIColor(self.lightBlue50)
            }
        })
    }
    
    public static var accentViolet: Color {
        return Color(UIColor { traitCollection in
            switch traitCollection.userInterfaceStyle {
            case .dark:
                return UIColor(self.violet60)
            default:
                return UIColor(self.violet50)
            }
        })
    }
    
    public static var accentPurple: Color {
        return Color(UIColor { traitCollection in
            switch traitCollection.userInterfaceStyle {
            case .dark:
                return UIColor(self.purple60)
            default:
                return UIColor(self.purple50)
            }
        })
    }
    
    public static var accentPink: Color {
        return Color(UIColor { traitCollection in
            switch traitCollection.userInterfaceStyle {
            case .dark:
                return UIColor(self.pink60)
            default:
                return UIColor(self.pink50)
            }
        })
    }
    
    // Inverse
    public static var inversePrimary: Color {
        return Color(UIColor { traitCollection in
            switch traitCollection.userInterfaceStyle {
            case .dark:
                return UIColor(self.blue50)
            default:
                return UIColor(self.blue60)
            }
        })
    }
    
    public static var inverseBackground: Color {
        return Color(UIColor { traitCollection in
            switch traitCollection.userInterfaceStyle {
            case .dark:
                return UIColor(self.common100)
            default:
                return UIColor(self.coolNeutral15)
            }
        })
    }
    
    public static var inverseLabel: Color {
        return Color(UIColor { traitCollection in
            switch traitCollection.userInterfaceStyle {
            case .dark:
                return UIColor(self.coolNeutral10)
            default:
                return UIColor(self.coolNeutral99)
            }
        })
    }
    
    // Fill
    public static var fillNormal: Color {
        return Color(UIColor { traitCollection in
            switch traitCollection.userInterfaceStyle {
            case .dark:
                return UIColor(self.coolNeutral50.opacity(0.22))
            default:
                return UIColor(self.coolNeutral50.opacity(0.08))
            }
        })
    }
    
    public static var fillStrong: Color {
        return Color(UIColor { traitCollection in
            switch traitCollection.userInterfaceStyle {
            case .dark:
                return UIColor(self.coolNeutral50.opacity(0.28))
            default:
                return UIColor(self.coolNeutral50.opacity(0.16))
            }
        })
    }
    
    public static var fillAlternative: Color {
        return Color(UIColor { traitCollection in
            switch traitCollection.userInterfaceStyle {
            case .dark:
                return UIColor(self.coolNeutral50.opacity(0.12))
            default:
                return UIColor(self.coolNeutral50.opacity(0.05))
            }
        })
    }
    
    // Material
    public static var meterialDimmer: Color {
        return Color(UIColor { traitCollection in
            switch traitCollection.userInterfaceStyle {
            case .dark:
                return UIColor(self.coolNeutral10.opacity(0.74))
            default:
                return UIColor(self.coolNeutral10.opacity(0.52))
            }
        })
    }
}
