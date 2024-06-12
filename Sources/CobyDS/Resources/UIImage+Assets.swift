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
    public static let checkOff = UIImage(name: "check_off")!
    public static let checkOn = UIImage(name: "check_on")!
    public static let checkboxOff = UIImage(name: "checkbox_off")!
    public static let checkboxOn = UIImage(name: "checkbox_on")!
    public static let radioOff = UIImage(name: "radio_off")!
    public static let radioOn = UIImage(name: "radio_on")!
    public static let visibilityOff = UIImage(name: "visibility_off")!
    public static let visibilityOn = UIImage(name: "visibility_on")!
    
    // Icon
    public static let back = UIImage(name: "back")!
    public static let forward = UIImage(name: "forward")!
    public static let cancel = UIImage(name: "cancel")!
    public static let search = UIImage(name: "search")!
    public static let person = UIImage(name: "person")!
    public static let image = UIImage(name: "image")!
}

public extension UIImage {
    func resize(to size: CGSize) -> UIImage {
        let image = UIGraphicsImageRenderer(size: size).image { _ in
            draw(in: CGRect(origin: .zero, size: size))
        }
        return image
    }
}
