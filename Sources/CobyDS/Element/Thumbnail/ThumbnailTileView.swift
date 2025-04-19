//
//  ThumbnailTileView.swift
//
//
//  Created by Coby on 7/6/24.
//

import SwiftUI

public struct ThumbnailTileView: View {
    
    private let isSelected: Bool
    private let image: UIImage?
    private let title: String
    private let subTitle: String?
    private let description: String
    private let isSelectedBorderColor: Color

    public init(
        isSelected: Bool = false,
        image: UIImage?,
        title: String,
        subTitle: String?,
        description: String,
        isSelectedBorderColor: Color = Color.blueNormal
    ) {
        self.isSelected = isSelected
        self.image = image
        self.title = title
        self.subTitle = subTitle
        self.description = description
        self.isSelectedBorderColor = isSelectedBorderColor
    }
    
    public var body: some View {
        HStack(spacing: 16) {
            ThumbnailView(
                image: self.image
            )
            .aspectRatio(1.0, contentMode: .fit)
            .padding([.leading, .vertical], 12)
            
            VStack(alignment: .leading, spacing: 4) {
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
                            .minimumScaleFactor(1)
                    }
                }
                
                Text(self.description)
                    .font(.pretendard(size: 14, weight: .regular))
                    .foregroundColor(Color.labelNeutral)
                    .lineLimit(2)
                    .truncationMode(.tail)
                
                Spacer()
            }
            .padding([.vertical, .trailing], 16)
        }
        .frame(maxWidth: .infinity)
        .background(Color.backgroundNormalNormal)
        .clipShape(RoundedRectangle(cornerRadius: 12))
        .overlay(
            RoundedRectangle(cornerRadius: 12)
                .stroke(self.isSelected ? self.isSelectedBorderColor : Color.lineNormalNeutral, lineWidth: 1)
        )
    }
}


#Preview {
    VStack {
        ThumbnailTileView(
            isSelected: true,
            image: nil,
            title: "title",
            subTitle: "date",
            description: "description"
        )
        .frame(width: BaseSize.fullWidth, height: 100)
        
        ThumbnailTileView(
            isSelected: false,
            image: nil,
            title: "title",
            subTitle: "date",
            description: "description"
        )
        .frame(width: BaseSize.fullWidth, height: 150)
    }
}
