//
//  ThumbnailCardView.swift
//
//
//  Created by Coby on 6/9/24.
//

import SwiftUI

public struct ThumbnailCardView: View {
    
    private let image: Image?
    private let title: String
    private let description: String
    private let isShadowing: Bool
    
    public init(
        image: Image? = nil,
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
        ZStack(alignment: .bottomLeading) {
            ThumbnailView(image: self.image)
                .clipShape(RoundedRectangle(cornerRadius: 12))
            
            LinearGradient(
                colors: [
                    Color.clear,
                    Color.clear,
                    Color.clear,
                    Color.clear,
                    Color.clear,
                    Color.staticBlack.opacity(0.1),
                    Color.staticBlack.opacity(0.5),
                    Color.staticBlack
                ],
                startPoint: .top,
                endPoint: .bottom
            )
            .clipShape(RoundedRectangle(cornerRadius: 12))
            
            VStack(alignment: .leading, spacing: 4) {
                Text(self.title)
                    .font(.pretendard(size: 18, weight: .bold))
                    .foregroundColor(Color.staticWhite)
                    .lineLimit(1)
                    .truncationMode(.tail)
                
                Text(self.description)
                    .font(.pretendard(size: 14, weight: .medium))
                    .foregroundColor(Color.staticWhite.opacity(0.5))
                    .lineLimit(1)
                    .truncationMode(.tail)
            }
            .padding(16)
        }
        .shadow(
            color: self.isShadowing ? Color.shadowNormal : Color.clear,
            radius: 12
        )
    }
}

#Preview {
    VStack {
        ThumbnailCardView(
            image: Image("rail",  bundle: .module),
            title: "전주에서",
            description: "철길입니다철길입니다철길입니다철길입니다철길입니다철길입니다철길입니다철길입니다철길입니다",
            isShadowing: true
        )
        .frame(width: BaseSize.fullWidth, height: BaseSize.fullWidth*0.8)
        
        ThumbnailCardView(
            image: Image("rail",  bundle: .module),
            title: "전주에서",
            description: "철길입니다철길입니다철길입니다철길입니다철길입니다철길입니다철길입니다철길입니다철길입니다"
        )
        .frame(width: BaseSize.fullWidth, height: BaseSize.fullWidth*0.8)
    }
    .loadCustomFonts()
}
