//
//  ThumbnailEmptyView.swift
//
//
//  Created by Coby on 6/9/24.
//

import SwiftUI

public struct ThumbnailEmptyView: View {
    public var body: some View {
        Image("image",  bundle: .module)
            .resizable()
            .frame(width: 64, height: 64)
            .foregroundColor(Color.labelAlternative)
            .frame(maxWidth: .infinity, maxHeight: .infinity)
            .background(Color.backgroundNormalAlternative)
            .clipShape(.rect(cornerRadius: 12))
            .overlay(
                RoundedRectangle(cornerRadius: 12)
                    .stroke(Color.lineNormalNeutral, lineWidth: 1)
            )
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
