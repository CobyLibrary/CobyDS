//
//  SwiftUIView.swift
//  
//
//  Created by Coby on 6/12/24.
//

import SwiftUI

public struct RoundedBoxView: View {
    
    private let title: String
    private let description: String
    
    public init(
        title: String,
        description: String
    ) {
        self.title = title
        self.description = description
    }
    
    public var body: some View {
        VStack(spacing: 8) {
            HStack {
                Text(self.title)
                    .font(.pretendard(size: 18, weight: .bold))
                    .foregroundStyle(Color.labelNormal)
                
                Spacer()
            }
            
            HStack {
                Text(self.description)
                    .font(.pretendard(size: 14, weight: .regular))
                    .foregroundStyle(Color.labelNeutral)
                    .multilineTextAlignment(.leading)
                
                Spacer()
            }
        }
        .frame(maxWidth: .infinity)
        .padding(12)
        .background(Color.backgroundNormalNormal)
    }
}

#Preview {
    RoundedBoxView(
        title: "제목",
        description: "내용입니다."
    )
    .loadCustomFonts()
}
