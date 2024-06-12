//
//  ThumbnailTitleView.swift
//
//
//  Created by Coby on 6/9/24.
//

import SwiftUI

public struct ThumbnailTitleView: View {
    
    private let image: UIImage?
    private let title: String
    private let description: String
    private let isShadowing: Bool
    
    public init(
        image: UIImage? = nil,
        title: String,
        description: String,
        isShadowing: Bool = false
    ) {
        self.image = image
        self.title = title
        self.description = description
        self.isShadowing = isShadowing
    }
    
    public var body: some View {
        VStack(alignment: .leading, spacing: 8) {
            ThumbnailView(
                image: self.image,
                isShadowing: self.isShadowing
            )
            .aspectRatio(1.0, contentMode: .fit)
            
            VStack(alignment: .leading, spacing: 2) {
                Text(self.title)
                    .font(.pretendard(size: 15, weight: .semibold))
                    .foregroundColor(Color.labelNormal)
                    .lineLimit(1)
                    .truncationMode(.tail)
                
                Text(self.description)
                    .font(.pretendard(size: 12, weight: .medium))
                    .foregroundColor(Color.labelAlternative)
                    .lineLimit(1)
                    .truncationMode(.tail)
            }
        }
    }
}

#Preview {
    VStack(spacing: 20) {
        ThumbnailTitleView(
            image: UIImage.icImage,
            title: "제목입니다만",
            description: "사진에 대한 설명이에요",
            isShadowing: true
        )
        .frame(width: 150)
        
        ThumbnailTitleView(
            title: "제목입니다만",
            description: "설명잉에요"
        )
        .frame(width: 150)
    }
    .loadCustomFonts()
}
