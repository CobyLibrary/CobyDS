//
//  UIImage+Extension.swift
//
//
//  Created by Coby Kim on 5/27/24.
//

import UIKit

extension UIImage {
    
    convenience init?(name: String) {
        self.init(named: name, in: .module, compatibleWith: nil)
    }
    
    public static let checkboxOn = UIImage(name: "checkbox_on")!
    public static let checkboxOff = UIImage(name: "checkbox_off")!
    public static let checkOn = UIImage(name: "check_on")!
    public static let checkOff = UIImage(name: "check_off")!
    public static let radioOn = UIImage(name: "radio_on")!
    public static let radioOff = UIImage(name: "radio_off")!
}
