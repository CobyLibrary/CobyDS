//
//  Date+Extension.swift
//
//
//  Created by Coby on 6/9/24.
//

import Foundation

extension Date {
    public func format(_ pattern: String) -> String {
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = pattern
        return dateFormatter.string(from: self)
    }
}

extension Date {
    public var year: Int {
        let cal = Calendar.current
        return cal.component(.year, from: self)
    }
    
    public var month: Int {
        let cal = Calendar.current
        return cal.component(.month, from: self)
    }
    
    public var day: Int {
        let cal = Calendar.current
        return cal.component(.day, from: self)
    }
    
    public var hour: Int {
        let cal = Calendar.current
        return cal.component(.hour, from: self)
    }
    
    public var minute: Int {
        let cal = Calendar.current
        return cal.component(.minute, from: self)
    }
}
