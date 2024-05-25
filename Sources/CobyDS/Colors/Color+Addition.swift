//
//  File.swift
//  
//
//  Created by Coby Kim on 5/26/24.
//

import SwiftUI

extension Color {
    
    init(hex: String) {
        let scanner = Scanner(string: hex)
        _ = scanner.scanString("#")
        
        var rgb: UInt64 = 0
        scanner.scanHexInt64(&rgb)
        
        let r = Double((rgb >> 16) & 0xFF) / 255.0
        let g = Double((rgb >>  8) & 0xFF) / 255.0
        let b = Double((rgb >>  0) & 0xFF) / 255.0
        self.init(red: r, green: g, blue: b)
    }
    
    // GrayScale(Blue)
    public static let grayScaleBlue100 = Color(hex: "161820")
    public static let grayScaleBlue200 = Color(hex: "485464")
    public static let grayScaleBlue300 = Color(hex: "8A929E")
    public static let grayScaleBlue400 = Color(hex: "C3C9CE")
    public static let grayScaleBlue500 = Color(hex: "E4E8ED")
    public static let grayScaleBlue600 = Color(hex: "EDF1F6")
    
    // GrayScale(Neutral)
    public static let grayScale100 = Color(hex: "212121")
    public static let grayScale200 = Color(hex: "525252")
    public static let grayScale300 = Color(hex: "727272")
    public static let grayScale400 = Color(hex: "B7B7B7")
    
    // Border
    public static let borderGray100 = Color(hex: "D0D5DC")
    public static let borderGray200 = Color(hex: "E4E8ED")
    
    // Background
    public static let backgroundGrayLight = Color(hex: "F2F3F6")
    public static let backgroundGrayLighter = Color(hex: "F5F6F8")
    public static let backgroundGrayLightest = Color(hex: "FAFBFC")
    public static let backgroundPurple = Color(hex: "F6F4FF")
    public static let backgroundDeepBlue = Color(hex: "F7F8FE")
    public static let backgroundBlue = Color(hex: "F5FAFF")
    public static let backgroundGreen = Color(hex: "F6FFF7")
    public static let backgroundOrange = Color(hex: "FEFBF4")
    public static let backgroundRed = Color(hex: "FFF8F8")
    public static let backgroundBrown = Color(hex: "FDFBF9")

    // Purple
    public static let purple100 = Color(hex: "1E0333")
    public static let purple200 = Color(hex: "270542")
    public static let purple300 = Color(hex: "2F0269")
    public static let purple400 = Color(hex: "5419B5")
    public static let purple500 = Color(hex: "774CF0")
    public static let purple600 = Color(hex: "BCB2F9")
    public static let purple700 = Color(hex: "EDEAFF")
    
    // DeepBlue
    public static let deepBlue100 = Color(hex: "0C0228")
    public static let deepBlue200 = Color(hex: "0F1F49")
    public static let deepBlue300 = Color(hex: "0C2476")
    public static let deepBlue400 = Color(hex: "192FA4")
    public static let deepBlue500 = Color(hex: "495FD2")
    public static let deepBlue600 = Color(hex: "C3CEF6")
    public static let deepBlue700 = Color(hex: "F0F3FF")
    
    // SendyBlue
    public static let sendyBlue100 = Color(hex: "05154D")
    public static let sendyBlue200 = Color(hex: "000A66")
    public static let sendyBlue300 = Color(hex: "0B31B7")
    public static let sendyBlue400 = Color(hex: "2E58EC")
    public static let sendyBlue500 = Color(hex: "377CF8")
    public static let sendyBlue600 = Color(hex: "B6D3FF")
    public static let sendyBlue700 = Color(hex: "E3EEFF")
    
    // Green
    public static let green100 = Color(hex: "022D18")
    public static let green200 = Color(hex: "044727")
    public static let green300 = Color(hex: "07723E")
    public static let green400 = Color(hex: "1DB964")
    public static let green500 = Color(hex: "33CF69")
    public static let green600 = Color(hex: "ABE3BA")
    public static let green700 = Color(hex: "DBF4D5")
    
    // Red
    public static let red100 = Color(hex: "2B0000")
    public static let red200 = Color(hex: "6C1111")
    public static let red300 = Color(hex: "9C0707")
    public static let red400 = Color(hex: "F53333")
    public static let red500 = Color(hex: "FF736A")
    public static let red600 = Color(hex: "FDDFDF")
    public static let red700 = Color(hex: "FFF5F5")
    
    // Orange
    public static let orange100 = Color(hex: "452D08")
    public static let orange200 = Color(hex: "804C00")
    public static let orange300 = Color(hex: "DA8301")
    public static let orange400 = Color(hex: "FAB229")
    public static let orange500 = Color(hex: "FFCD6D")
    public static let orange600 = Color(hex: "FCE9BA")
    public static let orange700 = Color(hex: "FFF6E4")
    
    // Lime
    public static let lime100 = Color(hex: "133101")
    public static let lime200 = Color(hex: "3C7800")
    public static let lime300 = Color(hex: "77AF00")
    public static let lime400 = Color(hex: "A7DA16")
    public static let lime500 = Color(hex: "D0F662")
    public static let lime600 = Color(hex: "E8FFA8")
    public static let lime700 = Color(hex: "F3FFD2")
    
    // ETC
    public static let skyblue = Color(hex: "75ACFF")
    public static let SNskyblue100 = Color(hex: "CCE9FF")
    public static let SNblue700 = Color(hex: "1F3DA6")
}
