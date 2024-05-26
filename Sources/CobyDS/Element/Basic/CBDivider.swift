//
//  CBDivider.swift
//
//
//  Created by Coby Kim on 5/26/24.
//

import SwiftUI

public struct CBDivider: View {
    
    public enum Variant {
        case normal, thick
    }
    
    private let variant: Variant
    private let vertical: Bool
    private let color: Color
    private let height: CGFloat
    
    public init(
        variant: Variant = .normal,
        vertical: Bool = false
    ) {
        self.variant = variant
        self.vertical = vertical
        self.color = variant == .normal ? Color.lineNormalNormal : Color.lineNormalAlternative
        self.height = variant == .normal ? 1 : 12
    }
    
    public var body: some View {
        if self.vertical {
            self.color
                .frame(width: 1)
                .frame(maxHeight: .infinity)
        } else {
            self.color
                .frame(height: self.height)
        }
    }
}

#Preview {
    VStack {
        CBDivider()
        
        CBDivider(variant: .thick)
        
        CBDivider(vertical: true)
    }
}
