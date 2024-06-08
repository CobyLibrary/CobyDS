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
        GeometryReader { geometry in
            ThumbnailView(image: self.image)
                .overlay(
                    alignment: .bottom, content: {
                        ShadowOverlayView()
                            .frame(width: geometry.size.width, height: geometry.size.height/2)
                    }
                )
                .clipShape(.rect(cornerRadius: 12))
        }
    }
    
    @ViewBuilder
    func ShadowOverlayView() -> some View {
        ZStack(alignment: .bottomLeading) {
            LinearGradient(colors: [
                Color.clear,
                Color.black
            ], startPoint: .top, endPoint: .bottom)
            
            VStack(alignment: .leading, spacing: 4) {
                Text(self.title)
                    .font(.pretendard(size: 22, weight: .bold))
                    .foregroundColor(Color.white)
                    .lineLimit(1)
                    .truncationMode(.tail)
                
                Text(self.discription)
                    .font(.pretendard(size: 14, weight: .medium))
                    .foregroundColor(Color.neutral95)
                    .lineLimit(1)
                    .truncationMode(.tail)
            }
            .padding(16)
        }
    }
}

#Preview {
    VStack {
        ThumbnailCardView(
            image: Image("rail",  bundle: .module),
            title: "전주에서",
            discription: "2020.12.12"
        )
        .frame(width: BaseSize.fullWidth, height: BaseSize.fullWidth*0.8)
        
        ThumbnailCardView(
            image: Image("rail",  bundle: .module),
            title: "전주에서",
            discription: "철길입니다철길입니다철길입니다철길입니다철길입니다철길입니다철길입니다철길입니다철길입니다"
        )
        .frame(width: BaseSize.fullWidth, height: BaseSize.fullWidth*0.8)
        
        ThumbnailCardView(
            image: Image("rail",  bundle: .module),
            title: "전주에서",
            discription: "철길입니다철길입니다철길입니다철길입니다철길입니다철길입니다철길입니다철길입니다철길입니다"
        )
        .frame(width: BaseSize.fullWidth, height: BaseSize.fullWidth*0.8)
    }
    .loadCustomFonts()
}
