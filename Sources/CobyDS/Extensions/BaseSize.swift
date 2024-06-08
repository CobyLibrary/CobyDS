//
//  File.swift
//  
//
//  Created by Coby on 6/9/24.
//

import SwiftUI

public enum BaseSize {
    static let horizantalPadding: CGFloat = 20
    static let screenWidth: CGFloat = UIScreen.main.bounds.size.width
    static let screenHeight: CGFloat = UIScreen.main.bounds.size.height
    static let fullWidth: CGFloat = screenWidth - horizantalPadding * 2
    
    static var topAreaPadding: CGFloat {
        let scenes = UIApplication.shared.connectedScenes
        let windowScene = scenes.first as? UIWindowScene
        let window = windowScene?.windows.first
        let topPadding = window?.safeAreaInsets.top ?? 0
        return topPadding
    }
    
    static var bottomAreaPadding: CGFloat {
        let scenes = UIApplication.shared.connectedScenes
        let windowScene = scenes.first as? UIWindowScene
        let window = windowScene?.windows.first
        let bottomPadding = window?.safeAreaInsets.bottom ?? 0
        return bottomPadding
    }
}
