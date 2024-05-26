////
////  CustomButtonStyle.swift
////  
////
////  Created by Coby Kim on 5/26/24.
////
//
//import SwiftUI
//
//public struct CustomButtonStyle: ButtonStyle {
//    
//    var foregroundColor: Color {
//        switch buttonType {
//        case .solid:
//            switch buttonUsage {
//            case .primary:
//                return Color.white
//            case .secondary:
//                return Color.sendyBlue400
//            case .tertiary:
//                return Color.grayScaleBlue100
//            case .distructive:
//                return Color.red400
//            case .disabled:
//                return Color.white
//            }
//        case .outlined:
//            switch buttonUsage {
//            case .disabled:
//                return Color.grayScaleBlue300
//            default:
//                return Color.grayScaleBlue100
//            }
//        case .borderless:
//            switch buttonUsage {
//            case .primary:
//                return Color.sendyBlue400
//            case .secondary:
//                return Color.grayScaleBlue100
//            case .tertiary:
//                return Color.grayScaleBlue100
//            case .distructive:
//                return Color.red400
//            case .disabled:
//                return Color.grayScaleBlue300
//            }
//        }
//    }
//        
//    var backgroundColor: Color {
//        switch buttonType {
//        case .solid:
//            switch buttonUsage {
//            case .primary:
//                return Color.sendyBlue400
//            case .secondary:
//                return Color.sendyBlue700
//            case .tertiary:
//                return Color.grayScaleBlue600
//            case .distructive:
//                return Color.red600
//            case .disabled:
//                return Color.grayScaleBlue400
//            }
//        case .outlined:
//            return Color.clear
//        case .borderless:
//            return Color.clear
//        }
//    }
//        
//    var borderColor: Color {
//        switch buttonType {
//        case .solid:
//            return Color.clear
//        case .outlined:
//            return Color.borderGray100
//        case .borderless:
//            return Color.clear
//        }
//    }
//    
//    public let buttonType: CustomButtonType
//    public let buttonUsage: CustomButtonUsage
//    public let buttonSize: CustomButtonSize
//    public let buttonContentsType: CustomButtonContentsType
//    
//    public init(
//        buttonType: CustomButtonType,
//        buttonUsage: CustomButtonUsage,
//        buttonSize: CustomButtonSize,
//        contentsType: CustomButtonContentsType
//    ) {
//        self.buttonType = buttonType
//        self.buttonUsage = buttonUsage
//        self.buttonSize = buttonSize
//        self.buttonContentsType = contentsType
//    }
//    
//    public func makeBody(configuration: Self.Configuration) -> some View {
//        Group {
//            switch buttonContentsType {
//            case .text:
//                configuration.label
//            case .withIcon:
//                HStack(spacing: 8) {
//                    Image(uiImage: UIImage.icCheck)
//                        .resizable()
//                        .frame(width: 24, height: 24)
//                    
//                    configuration.label
//                }
//            case .icon:
//                Image(uiImage: UIImage.icCheck)
//                    .resizable()
//                    .frame(width: 24, height: 24)
//            case .trailing:
//                HStack(spacing: 0) {
//                    configuration.label
//                    
//                    Image(uiImage: UIImage.icChevronMoreEdge)
//                        .resizable()
//                        .frame(width: 16, height: 24)
//                }
//            }
//        }
//        .font(.pretendard(size: buttonSize == .small ? 14.0 : 16.0, weight: .medium))
//        .foregroundColor(foregroundColor)
//        .frame(maxWidth: buttonContentsType == .icon ? buttonSize.height : .infinity, minHeight: buttonSize.height)
//        .background(backgroundColor.cornerRadius(8))
//        .overlay(
//            RoundedRectangle(cornerRadius: 8)
//                .strokeBorder(borderColor, lineWidth: 1)
//        )
//        .overlay(
//            (configuration.isPressed && buttonUsage != .disabled ? Color.black.opacity(0.2) : Color.clear).cornerRadius(8)
//        )
//    }
//}
