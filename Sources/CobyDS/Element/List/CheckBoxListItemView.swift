//
//  CheckBoxListItemView.swift
//
//
//  Created by Coby Kim on 5/27/24.
//

import SwiftUI

public struct CheckBoxListItemView: View {
    
    @Binding var isChecked: Bool
    
    private let title: String
    
    public init(
        isChecked: Binding<Bool>,
        title: String
    ) {
        self._isChecked = isChecked
        self.title = title
    }
    
    public var body: some View {
        HStack(spacing: 8) {
            Image(uiImage: self.isChecked ? UIImage.icCheckboxOn : UIImage.icCheckboxOff)
                .resizable()
                .frame(width: 24, height: 24)
                .foregroundColor(Color.labelNeutral)
            
            Text(self.title)
                .font(.pretendard(size: 16, weight: .regular))
                .foregroundColor(.labelNormal)
                .multilineTextAlignment(.leading)
            
            Spacer()
        }
        .contentShape(Rectangle())
        .frame(maxWidth: .infinity)
        .onTapGesture {
            self.isChecked.toggle()
        }
    }
}

#Preview {
    VStack(spacing: 0) {
        CheckBoxListItemView(
            isChecked: .constant(true),
            title: "동의합니다."
        )
        
        CheckBoxListItemView(
            isChecked: .constant(false),
            title: "동의합니다."
        )
    }
    .padding(.horizontal, BaseSize.horizantalPadding)
}
