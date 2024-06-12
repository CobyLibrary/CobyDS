//
//  ThumbnailEmptyView.swift
//
//
//  Created by Coby on 6/9/24.
//

import SwiftUI

public struct ThumbnailEmptyView: View {
    
    public var body: some View {
        Image(uiImage: UIImage.icImage)
            .resizable()
            .frame(width: 64, height: 64)
            .foregroundColor(Color.labelAlternative)
            .frame(maxWidth: .infinity, maxHeight: .infinity)
            .background(Color.backgroundNormalAlternative)
    }
}

#Preview {
    VStack {
        ThumbnailEmptyView()
            .frame(width: 100, height: 100)
        
        ThumbnailEmptyView()
            .frame(width: 150, height: 150)
        
        ThumbnailEmptyView()
            .frame(width: 300, height: 150)
    }
}
