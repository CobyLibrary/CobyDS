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
    private let isShadowing: Bool
    
    public init(
        image: UIImage? = nil,
        title: String,
        isShadowing: Bool = false
    ) {
        self.image = image
        self.title = title
        self.isShadowing = isShadowing
    }
    
    public var body: some View {
        VStack(alignment: .leading, spacing: 8) {
            ThumbnailView(
                image: self.image,
                isShadowing: self.isShadowing
            )
            .aspectRatio(1.0, contentMode: .fit)
            
            Text(self.title)
                .font(.pretendard(size: 16, weight: .medium))
                .foregroundColor(Color.labelNormal)
                .lineLimit(1)
                .truncationMode(.tail)
        }
    }
}

#Preview {
    VStack(spacing: 20) {
        ThumbnailTitleView(
            image: UIImage.icImage,
            title: "제목입니다만",
            isShadowing: true
        )
        .frame(width: 150)
        
        ThumbnailTitleView(
            title: "제목입니다만"
        )
        .frame(width: 150)
    }
    .loadCustomFonts()
}
