//
//  ProfileCardView.swift
//
//
//  Created by Coby on 6/12/24.
//

import SwiftUI

public struct ProfileCardView: View {
    
    private let image: UIImage?
    private let name: String
    
    public init(
        image: UIImage?,
        name: String
    ) {
        self.image = image
        self.name = name
    }
    
    public var body: some View {
        HStack(spacing: 16) {
            if let image = self.image {
                Image(uiImage: image)
                    .resizable()
                    .scaledToFill()
                    .frame(width: 64, height: 64)
                    .clipShape(Circle())
                    .overlay(
                        Circle()
                            .stroke(Color.lineNormalNeutral, lineWidth: 1)
                    )
            } else {
                Image(uiImage: UIImage.icPerson)
                    .resizable()
                    .frame(width: 32, height: 32)
                    .foregroundColor(Color.labelAlternative)
                    .frame(width: 64, height: 64)
                    .background(Color.backgroundNormalAlternative)
                    .clipShape(Circle())
                    .overlay(
                        Circle()
                            .stroke(Color.lineNormalNeutral, lineWidth: 1)
                    )
            }
            
            Text(self.name)
                .font(.pretendard(size: 20, weight: .semibold))
                .foregroundColor(Color.labelNormal)
                .lineLimit(1)
                .truncationMode(.tail)
            
            Spacer()
        }
    }
}

#Preview {
    VStack {
        ProfileCardView(
            image: UIImage.icPerson,
            name: "사용자"
        )
        
        ProfileCardView(
            image: nil,
            name: "사용자"
        )
    }
    .loadCustomFonts()
}

