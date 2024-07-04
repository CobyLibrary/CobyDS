import SwiftUI

public struct ThumbnailView: View {
    
    private let image: UIImage?
    private let isShadowing: Bool
    
    public init(
        image: UIImage? = nil,
        isShadowing: Bool = false
    ) {
        self.image = image
        self.isShadowing = isShadowing
    }
    
    public var body: some View {
        if let image = self.image {
            Image(uiImage: image)
                .resizable()
                .scaledToFill()
                .clipShape(RoundedRectangle(cornerRadius: 12))
                .overlay(
                    RoundedRectangle(cornerRadius: 12)
                        .stroke(Color.lineNormalNeutral, lineWidth: self.isShadowing ? 0 : 1)
                )
                .shadow(
                    color: self.isShadowing ? Color.shadowEmphasize : Color.clear,
                    radius: 8,
                    x: 0,
                    y: 2
                )
        } else {
            ThumbnailEmptyView()
                .clipShape(RoundedRectangle(cornerRadius: 12))
                .overlay(
                    RoundedRectangle(cornerRadius: 12)
                        .stroke(Color.lineNormalNeutral, lineWidth: self.isShadowing ? 0 : 1)
                )
                .shadow(
                    color: self.isShadowing ? Color.shadowEmphasize : Color.clear,
                    radius: 8,
                    x: 0,
                    y: 2
                )
        }
    }
}

#Preview {
    VStack {
        ThumbnailView(
            image: UIImage(named: "icImage"),
            isShadowing: true
        )
        .frame(width: 100, height: 100)
        
        ThumbnailView(
            image: UIImage(named: "icImage"),
            isShadowing: true
        )
        .frame(width: 200, height: 150)
        
        ThumbnailView(
            image: UIImage(named: "icImage"),
            isShadowing: true
        )
        .frame(width: 300, height: 150)
    }
}
