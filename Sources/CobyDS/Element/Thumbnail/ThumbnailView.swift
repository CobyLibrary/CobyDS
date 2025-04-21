//
//  ThumbnailView.swift
//
//
//  Created by Coby on 6/9/24.
//

import SwiftUI

public struct ThumbnailView: View {
    
    @Binding private var image: UIImage?
    private let isShadowing: Bool
    
    public init(
        image: Binding<UIImage?>,
        isShadowing: Bool = false
    ) {
        self._image = image
        self.isShadowing = isShadowing
    }
    
    public var body: some View {
        GeometryReader { geometry in
            if let image = self.image {
                Image(uiImage: image)
                    .resizable()
                    .scaledToFill()
                    .frame(width: geometry.size.width, height: geometry.size.height)
            } else {
                ThumbnailEmptyView()
            }
        }
        .background(Color.fillNormal)
        .clipShape(RoundedRectangle(cornerRadius: 12))
        .contentShape(Rectangle())
        .overlay(
            RoundedRectangle(cornerRadius: 12)
                .stroke(Color.lineNormalNeutral, lineWidth: self.isShadowing ? 0 : 1)
        )
        .shadow(
            color: self.isShadowing ? Color.shadowEmphasize : Color.clear,
            radius: 8,
            x: 0,
            y: 2
        )
    }
}

#Preview {
    VStack {
        ThumbnailView(
            image: .constant(UIImage.icImage),
            isShadowing: true
        )
        .frame(width: 100, height: 100)
        
        ThumbnailView(
            image: .constant(UIImage.icImage),
            isShadowing: true
        )
        .frame(width: 200, height: 150)
        
        ThumbnailView(
            image: .constant(UIImage.icImage),
            isShadowing: true
        )
        .frame(width: 300, height: 150)
    }
}
