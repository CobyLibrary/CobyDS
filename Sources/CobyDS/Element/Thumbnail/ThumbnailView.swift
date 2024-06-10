//
//  ThumbnailView.swift
//
//
//  Created by Coby on 6/9/24.
//

import SwiftUI

public struct ThumbnailView: View {
    
    private let image: Image?
    private let isShadowing: Bool
    
    public init(
        image: Image? = nil,
        isShadowing: Bool = false
    ) {
        self.image = image
        self.isShadowing = isShadowing
    }
    
    public var body: some View {
        GeometryReader { geometry in
            if let image = self.image {
                image
                    .resizable()
                    .scaledToFill()
                    .frame(width: geometry.size.width, height: geometry.size.height)
                    .clipShape(.rect(cornerRadius: 12))
                    .overlay(
                        RoundedRectangle(cornerRadius: 12)
                            .stroke(Color.lineNormalNeutral, lineWidth: 1)
                    )
            } else {
                ThumbnailEmptyView()
            }
        }
        .shadow(
            color: self.isShadowing ? Color.shadowStrong : Color.clear,
            radius: 6
        )
    }
}

#Preview {
    VStack {
        ThumbnailView(
            image: Image("rail",  bundle: .module),
            isShadowing: true
        )
            .frame(width: 100, height: 100)
        
        ThumbnailView(image: Image("rail",  bundle: .module))
            .frame(width: 200, height: 150)
        
        ThumbnailView(image: Image("rail",  bundle: .module))
            .frame(width: 300, height: 150)
    }
}
