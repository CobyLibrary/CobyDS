import SwiftUI

public struct ThumbnailView: View {
    
    private let imageWidth: CGFloat
    private let imageHeight: CGFloat
    private let image: UIImage?
    private let isShadowing: Bool
    
    public init(
        imageWidth: CGFloat,
        imageHeight: CGFloat,
        image: UIImage? = nil,
        isShadowing: Bool = false
    ) {
        self.imageWidth = imageWidth
        self.imageHeight = imageHeight
        self.image = image
        self.isShadowing = isShadowing
    }
    
    public var body: some View {
        if let image = self.image {
            Image(uiImage: image)
                .resizable()
                .scaledToFill()
                .frame(width: self.imageWidth, height: self.imageHeight)
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
                .frame(width: self.imageWidth, height: self.imageHeight)
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
            imageWidth: 100,
            imageHeight: 100,
            image: UIImage(named: "icImage"),
            isShadowing: true
        )
        
        ThumbnailView(
            imageWidth: 200,
            imageHeight: 100,
            image: UIImage(named: "icImage"),
            isShadowing: true
        )
        
        ThumbnailView(
            imageWidth: 300,
            imageHeight: 100,
            image: UIImage(named: "icImage"),
            isShadowing: true
        )
    }
}
