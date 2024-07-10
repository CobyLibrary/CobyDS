//
//  SettingListItem.swift
//
//
//  Created by Coby on 7/8/24.
//

import SwiftUI

public struct SettingListItem: View {
    
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
                .frame(width: 20, height: 20)
                .foregroundColor(Color.labelAlternative)
                .padding(.trailing, -8)
        }
        .padding(.vertical, 12)
        .contentShape(Rectangle())
        .onTapGesture {
            self.action()
        }
    }
}

#Preview {
    VStack(spacing: 0) {
        SettingListItem(title: "버튼이에요") {
            print("클릭")
        }
        
        SettingListItem(title: "버튼이에요") {
            print("클릭")
        }
    }
    .padding(.horizontal, BaseSize.horizantalPadding)
    .loadCustomFonts()
}
