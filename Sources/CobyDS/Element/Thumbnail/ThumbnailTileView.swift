//
//  ThumbnailTileView.swift
//
//
//  Created by Coby on 7/6/24.
//

import SwiftUI

public struct ThumbnailTileView: View {
    
    private let isSelected: Bool
    @Binding private var image: UIImage?
    private let title: String
    private let subTitle: String?
    private let description: String
    private let subDescription: String?
    private let isSelectedBorderColor: Color

    public init(
        isSelected: Bool = false,
        image: Binding<UIImage?>,
        title: String,
        subTitle: String?,
        description: String,
        subDescription: String?,
        isSelectedBorderColor: Color = Color.blueNormal
    ) {
        self.isSelected = isSelected
        self._image = image
        self.title = title
        self.subTitle = subTitle
        self.description = description
        self.subDescription = subDescription
        self.isSelectedBorderColor = isSelectedBorderColor
    }
    
    public var body: some View {
        HStack(spacing: 16) {
            ThumbnailView(
                image: self.$image
            )
            .aspectRatio(1.0, contentMode: .fit)
            .padding([.leading, .vertical], 12)
            
            VStack(alignment: .leading, spacing: 12) {
                HStack {
                    Text(self.title)
                        .font(.pretendard(size: 16, weight: .medium))
                        .foregroundColor(Color.labelNormal)
                        .lineLimit(1)
                        .truncationMode(.tail)
                    
                    Spacer()
                    
                    if let subTitle = self.subTitle {
                        Text(subTitle)
                            .font(.pretendard(size: 12, weight: .regular))
                            .foregroundColor(Color.labelAlternative)
                            .lineLimit(1)
                    }
                }
                
                VStack(alignment: .leading, spacing: 4) {
                    Text(self.description)
                        .font(.pretendard(size: 14, weight: .regular))
                        .foregroundColor(Color.labelNeutral)
                        .truncationMode(.tail)
                    
                    if let subDescription = self.subDescription {
                        Text(subDescription)
                            .font(.pretendard(size: 12, weight: .regular))
                            .foregroundColor(Color.labelAlternative)
                            .truncationMode(.tail)
                    }
                }
                
                Spacer()
            }
            .padding([.vertical, .trailing], 16)
        }
        .frame(maxWidth: .infinity)
        .frame(height: 120)
        .background(Color.backgroundNormalNormal)
        .clipShape(RoundedRectangle(cornerRadius: 12))
        .overlay(
            RoundedRectangle(cornerRadius: 12)
                .stroke(self.isSelected ? self.isSelectedBorderColor : Color.lineNormalNeutral, lineWidth: 1)
        )
    }
}


#Preview {
    VStack(spacing: 20) {
        ThumbnailTileView(
            isSelected: true,
            image: .constant(nil),
            title: "title",
            subTitle: "date",
            description: "descriptiondescriptiondescriptiondescriptiondescriptiondescriptiondescriptiondescriptiondescriptiondescription",
            subDescription: nil
        )
        
        ThumbnailTileView(
            isSelected: false,
            image: .constant(nil),
            title: "title",
            subTitle: "date",
            description: "description",
            subDescription: "subDescription"
        )
    }
    .padding(BaseSize.horizantalPadding)
}
