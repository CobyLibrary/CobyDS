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
            Text(self.title)
                .font(.pretendard(size: 16, weight: .regular))
                .foregroundColor(.labelNormal)
                .multilineTextAlignment(.leading)
            
            Spacer()
            
            Image(uiImage: self.isChecked ? UIImage.icRadioOn : UIImage.icRadioOff)
                .padding(.trailing, -8)
        }
        .contentShape(Rectangle())
    }
}

#Preview {
    VStack(spacing: 0) {
        RadioListItemView(
            isChecked: true,
            title: "체크"
        )
        
        RadioListItemView(
            isChecked: false,
            title: "체크"
        )
    }
    .padding(.horizontal, BaseSize.horizantalPadding)
    .loadCustomFonts()
}
