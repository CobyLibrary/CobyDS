//
//  ThumbnailView.swift
//
//
//  Created by Coby on 6/9/24.
//

import SwiftUI

public struct ThumbnailView: View {
    
    private let image: Image?
    
    public init(
        image: Image? = nil
    ) {
        self.image = image
    }
    
    public var body: some View {
        Group {
            if let image = self.image {
                GeometryReader { geometry in
                    image
                        .resizable()
                        .scaledToFill()
                        .frame(width: geometry.size.width, height: geometry.size.height)
                        .clipShape(.rect(cornerRadius: 12))
                        .overlay(
                            RoundedRectangle(cornerRadius: 12)
                                .stroke(Color.lineNormalNeutral, lineWidth: 1)
                        )
                }
            } else {
                ThumbnailEmptyView()
            }
        }
    }
}

#Preview {
    VStack {
        ThumbnailView(image: Image("rail",  bundle: .module))
            .frame(width: 100, height: 100)
        
        ThumbnailView(image: Image("rail",  bundle: .module))
            .frame(width: 150, height: 150)
        
        ThumbnailView(image: Image("rail",  bundle: .module))
            .frame(width: 300, height: 150)
    }
}
