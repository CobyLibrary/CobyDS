//
//  ThumbnailTitleView.swift
//
//
//  Created by Coby on 6/9/24.
//

import SwiftUI

public struct ThumbnailTitleView: View {
    
    private let image: Image?
    private let title: String
    private let discription: String
    
    public init(
        image: Image? = nil,
        title: String,
        discription: String
    ) {
        self.image = image
        self.title = title
        self.discription = discription
    }
    
    public var body: some View {
        VStack(alignment: .leading, spacing: 8) {
            ThumbnailView(image: self.image)
                .aspectRatio(1.0, contentMode: .fit)
            
            VStack(alignment: .leading, spacing: 2) {
                Text(self.title)
                    .font(.pretendard(size: 15, weight: .semibold))
                    .foregroundColor(Color.labelNormal)
                    .lineLimit(1)
                    .truncationMode(.tail)
                
                Text(self.discription)
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
            image: Image("rail",  bundle: .module),
            title: "제목입니다만",
            discription: "사진에 대한 설명이에요"
        )
        .frame(width: 150)
        
        ThumbnailTitleView(
            title: "제목입니다만",
            discription: "설명잉에요"
        )
        .frame(width: 150)
    }
    .loadCustomFonts()
}
