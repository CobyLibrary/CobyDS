//
//  RadioListItemWithImageView.swift
//
//
//  Created by Coby on 7/8/24.
//

import SwiftUI

public struct RadioListItemWithImageView: View {
    
    private let isChecked: Bool
    private let image: UIImage
    private let title: String
    
    public init(
        isChecked: Bool,
        image: UIImage,
        title: String
    ) {
        self.isChecked = isChecked
        self.image = image
        self.title = title
    }
    
    public var body: some View {
        HStack {
            HStack(spacing: 8) {
                ThumbnailView(image: self.image)
                    .frame(width: 40, height: 40)
                
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
        RadioListItemWithImageView(
            isChecked: true,
            image: UIImage.icCamera,
            title: "제목"
        )
        
        RadioListItemWithImageView(
            isChecked: false,
            image: UIImage.icCamera,
            title: "제목"
        )
    }
    .padding(.horizontal, BaseSize.horizantalPadding)
}
