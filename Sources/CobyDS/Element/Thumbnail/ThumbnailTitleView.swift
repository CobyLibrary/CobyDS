//
//  ThumbnailTitleView.swift
//
//
//  Created by Coby on 6/9/24.
//

import SwiftUI

public struct ThumbnailTitleView: View {
    
    @Binding private var image: UIImage?
    private let title: String
    private let description: String?
    private let isShadowing: Bool
    
    public init(
        image: Binding<UIImage?>,
        title: String,
        description: String? = nil,
        isShadowing: Bool = false
    ) {
        self._image = image
        self.title = title
        self.description = description
        self.isShadowing = isShadowing
    }
    
    public var body: some View {
        VStack(alignment: .leading, spacing: 8) {
            ThumbnailView(
                image: self.$image,
                isShadowing: self.isShadowing
            )
            .aspectRatio(1.0, contentMode: .fit)
            
            VStack(alignment: .leading, spacing: 2) {
                Text(self.title)
                    .font(.pretendard(size: 16, weight: .medium))
                    .foregroundColor(Color.labelNormal)
                    .lineLimit(1)
                    .truncationMode(.tail)
                
                if let description = self.description {
                    Text(description)
                        .font(.pretendard(size: 12, weight: .regular))
                        .foregroundColor(Color.labelAlternative)
                        .lineLimit(1)
                        .truncationMode(.tail)
                }
            }
        }
    }
}

#Preview {
    VStack(spacing: 20) {
        ThumbnailTitleView(
            image: .constant(UIImage.icImage),
            title: "제목입니다만",
            description: "사진에 대한 설명이에요",
            isShadowing: true
        )
        .frame(width: 150)
        
        ThumbnailTitleView(
            image: .constant(nil),
            title: "제목입니다만"
        )
        .frame(width: 150)
        
        ThumbnailTitleView(
            image: .constant(nil),
            title: "제목입니다만",
            description: "설명잉에요"
        )
        .frame(width: 150)
    }
}
