//
//  TagView.swift
//
//
//  Created by Coby on 7/7/24.
//

import SwiftUI

public struct TagView: View {
    
    private let isSelected: Bool
    private let title: String
    private let tagColor: Color
    private let labelColor: Color
    
    public init(
        isSelected: Bool = false,
        title: String,
        tagColor: Color = Color.fillStrong,
        labelColor: Color = Color.labelNeutral
    ) {
        self.isSelected = isSelected
        self.title = title
        self.tagColor = tagColor
        self.labelColor = labelColor
    }
    
    public var body: some View {
        Text(self.title)
            .font(.pretendard(size: 14, weight: .regular))
            .foregroundColor(self.labelColor)
            .padding(.horizontal, 12)
            .padding(.vertical, 8)
            .background(self.isSelected ? self.tagColor : Color.backgroundNormalNormal)
            .clipShape(RoundedRectangle(cornerRadius: 8))
            .overlay(
                RoundedRectangle(cornerRadius: 8)
                    .stroke(Color.lineNormalNeutral, lineWidth: 1)
            )
    }
}


#Preview {
    TagView(isSelected: true, title: "태그")
}
