//
//  BaseSize.swift
//  
//
//  Created by Coby on 6/9/24.
//

import SwiftUI

public struct BaseSize {
    public static let horizantalPadding: CGFloat = 20
    public static let verticalPadding: CGFloat = 20
    public static let screenWidth: CGFloat = UIScreen.main.bounds.size.width
    public static let screenHeight: CGFloat = UIScreen.main.bounds.size.height
    public static let fullWidth: CGFloat = screenWidth - horizantalPadding * 2
    public static let cellHorizantalSpacing: CGFloat = 8
    public static let cellVerticalSpacing: CGFloat = 12
    public static let cellWidth: CGFloat = (fullWidth - cellHorizantalSpacing) / 2
    
    public static var topAreaPadding: CGFloat {
        let scenes = UIApplication.shared.connectedScenes
        let windowScene = scenes.first as? UIWindowScene
        let window = windowScene?.windows.first
        let topPadding = window?.safeAreaInsets.top ?? 0
        return topPadding
    }
    
    public static var bottomAreaPadding: CGFloat {
        let scenes = UIApplication.shared.connectedScenes
        let windowScene = scenes.first as? UIWindowScene
        let window = windowScene?.windows.first
        let bottomPadding = window?.safeAreaInsets.bottom ?? 0
        return bottomPadding
    }
}
