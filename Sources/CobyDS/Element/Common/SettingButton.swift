//
//  SettingButton.swift
//
//
//  Created by Coby on 7/8/24.
//

import SwiftUI

public struct SettingButton: View {
    
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
                .font(.pretendard(size: 17, weight: .regular))
                .foregroundColor(Color.labelNormal)
            
            Spacer()
            
            Image(uiImage: UIImage.icForward)
                .resizable()
                .frame(width: 20, height: 20)
                .foregroundColor(Color.labelAlternative)
                .padding(.trailing, -8)
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
        SettingButton(title: "버튼이에요") {
            print("클릭")
        }
        
        SettingButton(title: "버튼이에요") {
            print("클릭")
        }
    }
    .loadCustomFonts()
}
