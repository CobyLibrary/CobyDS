//
//  PhotosView.swift
//
//
//  Created by Coby on 7/8/24.
//

import SwiftUI

public struct PhotosView: View {
    
    private let photos: [UIImage]
    
    public init(
        photos: [UIImage]
    ) {
        self.photos = photos
    }
    
    public var body: some View {
        TabView {
            ForEach(self.photos, id: \.self) { photo in
                Image(uiImage: photo)
                    .resizable()
                    .scaledToFill()
                    .frame(width: BaseSize.screenWidth, height: BaseSize.screenWidth)
                    .clipped()
                    .contentShape(Rectangle())
                    .edgesIgnoringSafeArea(.top)
            }
        }
        .background(Color.backgroundNormalAlternative)
        .frame(width: BaseSize.screenWidth, height: BaseSize.screenWidth)
        .tabViewStyle(PageTabViewStyle())
        .indexViewStyle(PageIndexViewStyle(backgroundDisplayMode: .never))
        .edgesIgnoringSafeArea(.top)
    }
}
