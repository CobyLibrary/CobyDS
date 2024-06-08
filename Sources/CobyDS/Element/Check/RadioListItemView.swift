//
//  RadioListItemView.swift
//  
//
//  Created by Coby Kim on 5/27/24.
//

import SwiftUI

public struct RadioListItemView: View {
    
    private let isChecked: Bool
    private let title: String
    
    public init(
        isChecked: Bool,
        title: String
    ) {
        self.isChecked = isChecked
        self.title = title
    }
    
    public var body: some View {
        HStack(spacing: 4) {
            Image(self.isChecked ? "radio_on" : "radio_off",  bundle: .module)
            
            Text(self.title)
                .font(.pretendard(size: 16, weight: .medium))
                .foregroundColor(.labelNormal)
                .multilineTextAlignment(.leading)
            
            Spacer()
        }
        .contentShape(Rectangle())
        .frame(maxWidth: .infinity)
    }
}

#Preview {
    VStack {
        RadioListItemView(
            isChecked: true,
            title: "체크"
        )
        
        RadioListItemView(
            isChecked: false,
            title: "체크"
        )
    }
    .loadCustomFonts()
}
