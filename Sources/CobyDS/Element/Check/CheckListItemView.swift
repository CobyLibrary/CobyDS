//
//  CheckListItemView.swift
//
//
//  Created by Coby Kim on 5/27/24.
//

import SwiftUI

public struct CheckListItemView: View {
    
    @Binding var isChecked: Bool
    
    private let title: String
    
    public init(
        isChecked: Binding<Bool>,
        title: String
    ) {
        self._isChecked = isChecked
        self.title = title
    }
    
    public var body: some View {
        HStack(spacing: 4) {
            Image(uiImage: self.isChecked ? UIImage.checkOn : UIImage.checkOff)
            
            Text(self.title)
                .font(.pretendard(size: 16, weight: .regular))
                .foregroundColor(.labelNormal)
                .multilineTextAlignment(.leading)
            
            Spacer()
        }
        .contentShape(Rectangle())
        .frame(maxWidth: .infinity)
        .onTapGesture {
            self.isChecked.toggle()
        }
    }
}

#Preview {
    VStack {
        CheckListItemView(
            isChecked: .constant(true),
            title: "동의합니다."
        )
        
        CheckListItemView(
            isChecked: .constant(false),
            title: "동의합니다."
        )
    }
    .loadCustomFonts()
}
