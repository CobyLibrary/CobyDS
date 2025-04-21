//
//  UIImage+Assets.swift
//
//
//  Created by Coby on 6/12/24.
//

import UIKit

extension UIImage {
    
    convenience init?(name: String) {
        self.init(named: name, in: .module, compatibleWith: nil)
    }
    
    // On & Off
    public static let icCheck = UIImage(name: "check")!
    public static let icCheckboxOff = UIImage(name: "checkbox_off")!
    public static let icCheckboxOn = UIImage(name: "checkbox_on")!
    public static let icRadioOff = UIImage(name: "radio_off")!
    public static let icRadioOn = UIImage(name: "radio_on")!
    public static let icVisibilityOff = UIImage(name: "visibility_off")!
    public static let icVisibilityOn = UIImage(name: "visibility_on")!
    
    // Icon
    public static let icBack = UIImage(name: "back")!
    public static let icForward = UIImage(name: "forward")!
    public static let icCancel = UIImage(name: "cancel")!
    public static let icSearch = UIImage(name: "search")!
    public static let icPerson = UIImage(name: "person")!
    public static let icImage = UIImage(name: "image")!
    public static let icClose = UIImage(name: "close")!
    public static let icCamera = UIImage(name: "camera")!
    public static let icMore = UIImage(name: "more")!
    public static let icPlus = UIImage(name: "plus")!
    public static let icFilter = UIImage(name: "filter")!
}

public extension UIImage {
    func resize(to size: CGSize) -> UIImage {
        let image = UIGraphicsImageRenderer(size: size).image { _ in
            draw(in: CGRect(origin: .zero, size: size))
        }
        return image
    }
}
