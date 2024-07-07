//
//  TitleButton.swift
//
//
//  Created by Coby on 7/8/24.
//

import SwiftUI

public struct TitleButton: View {
    
    private let title: String
    private let action: () -> Void
    
    public init(
        title: String,
        action: @escaping () -> Void
    ) {
        self.title = title
        self.action = action
    }
    
    public var body: some View {
        HStack {
            Text(self.title)
                .font(.pretendard(size: 16, weight: .regular))
                .foregroundColor(Color.labelNormal)
            
            Spacer()
            
            Image(uiImage: UIImage.icForward)
                .resizable()
                .frame(width: 16, height: 16)
                .foregroundColor(Color.labelAlternative)
        }
        .padding(.horizontal, BaseSize.horizantalPadding)
        .padding(.vertical, 12)
        .onTapGesture {
            self.action()
        }
    }
}

#Preview {
    VStack(spacing: 0) {
        TitleButton(title: "버튼이에요") {
            print("클릭")
        }
        
        TitleButton(title: "버튼이에요") {
            print("클릭")
        }
    }
    .loadCustomFonts()
}
