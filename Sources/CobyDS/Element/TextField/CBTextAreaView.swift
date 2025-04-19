//
//  CBTextAreaView.swift
//
//
//  Created by Coby on 6/18/24.
//

import SwiftUI

public struct CBTextAreaView: View {
    
    @State private var isSecure: Bool = true
    
    @Binding var text: String
    @Binding var textFieldState: TextFieldState
    
    private let title: String?
    private let placeholder: String
    
    public init(
        text: Binding<String>,
        textFieldState: Binding<TextFieldState> = .constant(.enabled),
        title: String? = nil,
        placeholder: String = ""
    ) {
        self._text = text
        self._textFieldState = textFieldState
        self.title = title
        self.placeholder = placeholder
    }
    
    public var body: some View {
        VStack(alignment: .leading, spacing: 0) {
            if let title = title {
                HStack {
                    Text(title)
                        .font(.pretendard(size: 16, weight: .regular))
                        .foregroundColor(Color.labelNormal)
                    
                    Spacer()
                }
                .frame(maxWidth: .infinity, minHeight: 32)
            }
            
            TextField(text: $text, axis: .vertical) {
                Text(placeholder)
                    .font(.pretendard(size: 16.0, weight: .regular))
                    .foregroundColor(Color.labelAssistive)
            }
            .lineLimit(8...)
            .font(.pretendard(size: 16.0, weight: .regular))
            .foregroundColor(Color.labelNormal)
            .padding(12)
            .cornerRadius(10)
            .background(textFieldState.backgroudColor().cornerRadius(10))
            .overlay(
                RoundedRectangle(cornerRadius: 10)
                    .strokeBorder(textFieldState.borderColor, lineWidth: textFieldState == .enabled ? 1 : 2)
            )
        }
    }
}

#Preview {
    VStack {
        CBTextAreaView(
            text: .constant("입력 중"),
            title: "입력",
            placeholder: "입력해주세요"
        )
        
        CBTextAreaView(
            text: .constant("입력 중"),
            textFieldState: .constant(.focused),
            placeholder: "입력해주세요"
        )
    }
}
