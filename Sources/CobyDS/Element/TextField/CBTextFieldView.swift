//
//  CBTextFieldView.swift
//
//
//  Created by Coby on 6/9/24.
//

import SwiftUI

public struct CBTextFieldView: View {
    
    @FocusState private var isTextFieldFocused: Bool
    
    @State private var isSecure: Bool = true
    
    @Binding var text: String
    @Binding var textFieldState: TextFieldState
    
    private let textFieldContentsType: TextFieldContentsType
    private let textFieldTrailing: TextFieldTrailing
    private let textFieldSize: TextFieldSize
    private let isFilled: Bool
    private let title: String?
    private let placeholder: String
    private let errorMessage: String
    private let maxLength: Int
    private let trailingButtonAction: () -> Void
    
    public init(
        text: Binding<String>,
        textFieldState: Binding<TextFieldState> = .constant(.enabled),
        textFieldContentsType: TextFieldContentsType = .primary,
        textFieldTrailing: TextFieldTrailing = .none,
        textFieldSize: TextFieldSize = .large,
        isFilled: Bool = false,
        title: String? = nil,
        placeholder: String = "",
        errorMessage: String = "",
        maxLength: Int = 200,
        trailingButtonAction: @escaping () -> Void = {}
    ) {
        self._text = text
        self._textFieldState = textFieldState
        self.textFieldContentsType = textFieldContentsType
        self.textFieldTrailing = textFieldTrailing
        self.textFieldSize = textFieldSize
        self.isFilled = isFilled
        self.title = title
        self.placeholder = placeholder
        self.errorMessage = errorMessage
        self.maxLength = maxLength
        self.trailingButtonAction = trailingButtonAction
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
            
            VStack(alignment: .leading, spacing: 8) {
                HStack(spacing: 8) {
                    TextFieldView()
                    
                    TextFieldTrailingView()
                }
                .padding(.horizontal, 12)
                .cornerRadius(10)
                .background(textFieldState.backgroudColor(isFilled: isFilled).cornerRadius(10))
                .overlay(
                    RoundedRectangle(cornerRadius: 10)
                        .strokeBorder(textFieldState.borderColor, lineWidth: textFieldState == .enabled ? 1 : 2)
                )
                
                if textFieldState == .error {
                    HStack(alignment: .top, spacing: 4) {
                        Text(errorMessage)
                            .font(.pretendard(size: 14, weight: .regular))
                    }
                    .foregroundColor(.redHeavy)
                }
            }
        }
        
    }
    
    @ViewBuilder
    private func TextFieldView() -> some View {
        Group {
            switch textFieldContentsType {
            case .primary:
                TextField(text: $text) {
                    Text(placeholder)
                        .font(.pretendard(size: 16.0, weight: .regular))
                        .foregroundColor(Color.labelAssistive)
                }
            case .secure:
                if isSecure {
                    SecureField(text: $text) {
                        Text(placeholder)
                            .font(.pretendard(size: 16.0, weight: .regular))
                            .foregroundColor(Color.labelAssistive)
                    }
                } else {
                    TextField(text: $text) {
                        Text(placeholder)
                            .font(.pretendard(size: 16.0, weight: .regular))
                            .foregroundColor(Color.labelAssistive)
                    }
                }
            case .number:
                TextField(text: $text) {
                    Text(placeholder)
                        .font(.pretendard(size: 16.0, weight: .regular))
                        .foregroundColor(Color.labelAssistive)
                }
                .keyboardType(.numberPad)
            case .secureNumber:
                SecureField(text: $text) {
                    Text(placeholder)
                        .font(.pretendard(size: 16.0, weight: .regular))
                        .foregroundColor(Color.labelAssistive)
                }
                .keyboardType(.numberPad)
            }
        }
        .font(.pretendard(size: 16.0, weight: .regular))
        .foregroundColor(Color.labelNormal)
        .frame(maxWidth: .infinity, minHeight: textFieldSize.height)
        .clearButton(text: $text)
        .onChange(of: text) { _ in
            if text.count > maxLength {
                text = String(text.prefix(maxLength))
            }
        }
        .onChange(of: text) { _ in
            self.textFieldState = .focused
        }
        .focused($isTextFieldFocused)
        .onSubmit {
            isTextFieldFocused = false
        }
        .onChange(of: isTextFieldFocused) { _ in
            if isTextFieldFocused {
                textFieldState = .focused
            } else {
                if textFieldState != .error {
                    textFieldState = .enabled
                }
            }
        }
    }
    
    @ViewBuilder
    private func TextFieldTrailingView() -> some View {
        switch textFieldTrailing {
        case .none:
            EmptyView()
        case .visibillity:
            Image(uiImage: self.isSecure ? UIImage.icVisibilityOff : UIImage.icVisibilityOn)
                .resizable()
                .frame(width: 24, height: 24)
                .foregroundColor(Color.labelAlternative)
                .onTapGesture {
                    self.isSecure.toggle()
                }
        case .search:
            Image(uiImage: UIImage.icSearch)
                .resizable()
                .frame(width: 24, height: 24)
                .foregroundColor(Color.labelAlternative)
                .onTapGesture {
                    self.trailingButtonAction()
                }
        case .textCount:
            if isTextFieldFocused {
                Text("\(text.count)/\(maxLength)")
                    .font(.pretendard(size: 16.0, weight: .medium))
                    .foregroundColor(Color.labelAlternative)
            } else {
                EmptyView()
            }
        }
    }
}

#Preview {
    VStack {
        CBTextFieldView(
            text: .constant("입력 중"),
            textFieldState: .constant(.error),
            textFieldContentsType: .primary,
            textFieldTrailing: .none,
            textFieldSize: .large,
            isFilled: true,
            title: "입력",
            placeholder: "입력해주세요",
            errorMessage: "에러다"
        )
        
        CBTextFieldView(
            text: .constant("입력 중"),
            textFieldContentsType: .secure,
            textFieldTrailing: .visibillity,
            textFieldSize: .small,
            placeholder: "입력해주세요"
        )
        
        CBTextFieldView(
            text: .constant("입력 중"),
            textFieldContentsType: .primary,
            textFieldTrailing: .search,
            textFieldSize: .small,
            placeholder: "입력해주세요"
        ) {
            print("검색")
        }
        
        CBTextFieldView(
            text: .constant("입력 중"),
            textFieldContentsType: .primary,
            textFieldTrailing: .textCount,
            textFieldSize: .small,
            placeholder: "입력해주세요",
            maxLength: 10
        )
    }
    .loadCustomFonts()
}
