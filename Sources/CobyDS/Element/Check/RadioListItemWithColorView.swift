//
//  RadioListItemWithColorView.swift
//
//
//  Created by Coby on 7/8/24.
//

import SwiftUI

public struct RadioListItemWithColorView: View {
    
    private let isChecked: Bool
    private let color: Color
    private let title: String
    
    public init(
        isChecked: Bool,
        color: Color,
        title: String
    ) {
        self.isChecked = isChecked
        self.color = color
        self.title = title
    }
    
    public var body: some View {
        HStack {
            HStack(spacing: 8) {
                self.color
                    .clipShape(.rect(cornerRadius: 8))
                    .frame(width: 24, height: 24)
                
                Text(self.title)
                    .font(.pretendard(size: 16, weight: .regular))
                    .foregroundColor(.labelNormal)
                    .multilineTextAlignment(.leading)
            }
            
            Spacer()
            
            Image(uiImage: self.isChecked ? UIImage.icRadioOn : UIImage.icRadioOff)
                .resizable()
                .frame(width: 24, height: 24)
                .foregroundColor(Color.labelNeutral)
        }
        .contentShape(Rectangle())
    }
}

#Preview {
    VStack(spacing: 0) {
        RadioListItemWithColorView(
            isChecked: true,
            color: Color.red40,
            title: "제목"
        )
        
        RadioListItemWithColorView(
            isChecked: false,
            color: Color.blue40,
            title: "제목"
        )
    }
    .padding(.horizontal, BaseSize.horizantalPadding)
    .loadCustomFonts()
}
