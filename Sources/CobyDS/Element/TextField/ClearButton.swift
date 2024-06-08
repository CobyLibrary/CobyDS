//
//  ClearButton.swift
//
//
//  Created by Coby on 6/9/24.
//

import SwiftUI

public struct ClearButton: ViewModifier {
    
    @Binding var text: String
    
    public func body(content: Content) -> some View {
        HStack {
            content
            
            if !text.isEmpty {
                Button {
                    text = ""
                } label: {
                    Image("cancel", bundle: .module)
                        .resizable()
                        .frame(width: 20, height: 20)
                        .foregroundColor(Color.labelAssistive)
                }
            }
        }
    }
}

extension View {
    func clearButton(text: Binding<String>) -> some View {
        modifier(ClearButton(text: text))
    }
}
