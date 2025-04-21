//
//  ThumbnailWithCloseButtonView.swift
//
//
//  Created by Coby on 7/7/24.
//

import SwiftUI

public struct ThumbnailWithCloseButtonView: View {
    
    @Binding private var image: UIImage?
    private let isShadowing: Bool
    private let closeAction: () -> Void
    
    public init(
        image: Binding<UIImage?>,
        isShadowing: Bool = false,
        closeAction: @escaping () -> Void
    ) {
        self._image = image
        self.isShadowing = isShadowing
        self.closeAction = closeAction
    }
    
    public var body: some View {
        ThumbnailView(
            image: self.$image,
            isShadowing: self.isShadowing
        )
        .overlay(
            alignment: .topTrailing
        ) {
            Image(uiImage: UIImage.icClose)
                .resizable()
                .frame(width: 20, height: 20)
                .foregroundColor(Color.staticWhite)
                .padding(4)
                .background(
                    Circle()
                        .fill(Color.redHeavy)
                )
                .offset(x: 8, y: -8)
                .onTapGesture {
                    self.closeAction()
                }
        }
    }
}

#Preview {
    ThumbnailWithCloseButtonView(
        image: .constant(UIImage.icImage),
        isShadowing: true,
        closeAction: {
            print("close")
        }
    )
    .frame(width: 100, height: 100)
}
