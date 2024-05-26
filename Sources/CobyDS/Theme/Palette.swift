//
//  Palette.swift
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
    
    // Common
    public static let common100 = Color(hex: "#FFFFFF")
    public static let common0 = Color(hex: "#000000")
    
    // Neutral
    public static let neutral99 = Color(hex: "#F7F7F7")
    public static let neutral95 = Color(hex: "#DCDCDC")
    public static let neutral90 = Color(hex: "#C4C4C4")
    public static let neutral80 = Color(hex: "#B0B0B0")
    public static let neutral70 = Color(hex: "#9B9B9B")
    public static let neutral60 = Color(hex: "#8A8A8A")
    public static let neutral50 = Color(hex: "#737373")
    public static let neutral40 = Color(hex: "#5C5C5C")
    public static let neutral30 = Color(hex: "#474747")
    public static let neutral22 = Color(hex: "#303030")
    public static let neutral20 = Color(hex: "#2A2A2A")
    public static let neutral15 = Color(hex: "#1C1C1C")
    public static let neutral10 = Color(hex: "#171717")
    public static let neutral5 = Color(hex: "#0F0F0F")
    
    // CoolNeutral
    public static let coolNeutral99 = Color(hex: "#F7F7F8")
    public static let coolNeutral98 = Color(hex: "#F4F4F5")
    public static let coolNeutral97 = Color(hex: "#EAEBEC")
    public static let coolNeutral96 = Color(hex: "#E1E2E4")
    public static let coolNeutral95 = Color(hex: "#DBDCDF")
    public static let coolNeutral90 = Color(hex: "#C2C4C8")
    public static let coolNeutral80 = Color(hex: "#AEB0B6")
    public static let coolNeutral70 = Color(hex: "#989BA2")
    public static let coolNeutral60 = Color(hex: "#878A93")
    public static let coolNeutral50 = Color(hex: "#70737C")
    public static let coolNeutral40 = Color(hex: "#5A5C63")
    public static let coolNeutral30 = Color(hex: "#46474C")
    public static let coolNeutral25 = Color(hex: "#3C383C")
    public static let coolNeutral23 = Color(hex: "#333438")
    public static let coolNeutral22 = Color(hex: "#2E2F33")
    public static let coolNeutral20 = Color(hex: "#292A2D")
    public static let coolNeutral17 = Color(hex: "#212225")
    public static let coolNeutral15 = Color(hex: "#1B1C1E")
    public static let coolNeutral10 = Color(hex: "#171718")
    public static let coolNeutral7 = Color(hex: "#141415")
    public static let coolNeutral5 = Color(hex: "#0F0F10")
    
    // Blue
    public static let blue99 = Color(hex: "#F7FBFF")
    public static let blue95 = Color(hex: "#EAF2FE")
    public static let blue90 = Color(hex: "#C9DEFE")
    public static let blue80 = Color(hex: "#9EC5FF")
    public static let blue70 = Color(hex: "#69A5FF")
    public static let blue60 = Color(hex: "#3385FF")
    public static let blue55 = Color(hex: "#1A75FF")
    public static let blue50 = Color(hex: "#0066FF")
    public static let blue45 = Color(hex: "#005EEB")
    public static let blue40 = Color(hex: "#0054D1")
    public static let blue30 = Color(hex: "#003E9C")
    public static let blue20 = Color(hex: "#002966")
    public static let blue10 = Color(hex: "#001536")
    
    // Red
    public static let red99 = Color(hex: "#FFFAFA")
    public static let red95 = Color(hex: "#FEECEC")
    public static let red90 = Color(hex: "#FED5D5")
    public static let red80 = Color(hex: "#FFB5B5")
    public static let red70 = Color(hex: "#FF8C8C")
    public static let red60 = Color(hex: "#FF6363")
    public static let red50 = Color(hex: "#FF4242")
    public static let red40 = Color(hex: "#E52222")
    public static let red30 = Color(hex: "#B00C0C")
    public static let red20 = Color(hex: "#730303")
    public static let red10 = Color(hex: "#3B0101")
    
    // Green
    public static let green99 = Color(hex: "#F2FFF6")
    public static let green95 = Color(hex: "#D9FFE6")
    public static let green90 = Color(hex: "#ACFCC7")
    public static let green80 = Color(hex: "#7DF5A5")
    public static let green70 = Color(hex: "#49E57D")
    public static let green60 = Color(hex: "#1ED45A")
    public static let green50 = Color(hex: "#00BF40")
    public static let green40 = Color(hex: "#009632")
    public static let green30 = Color(hex: "#006E25")
    public static let green20 = Color(hex: "#004517")
    public static let green10 = Color(hex: "#00240C")
    
    // Orange
    public static let orange99 = Color(hex: "#FFFCF7")
    public static let orange95 = Color(hex: "#FEF4E6")
    public static let orange90 = Color(hex: "#FEE6C6")
    public static let orange80 = Color(hex: "#FFD49C")
    public static let orange70 = Color(hex: "#FFC06E")
    public static let orange60 = Color(hex: "#FFA938")
    public static let orange50 = Color(hex: "#FF9200")
    public static let orange40 = Color(hex: "#D47800")
    public static let orange30 = Color(hex: "#9C5800")
    public static let orange20 = Color(hex: "#663A00")
    public static let orange10 = Color(hex: "#361E00")
    
    // RedOrange
    public static let redOrange99 = Color(hex: "#FFFAF7")
    public static let redOrange95 = Color(hex: "#FEEEE5")
    public static let redOrange90 = Color(hex: "#FED9C4")
    public static let redOrange80 = Color(hex: "#FFBD96")
    public static let redOrange70 = Color(hex: "#FF9B61")
    public static let redOrange60 = Color(hex: "#FF7B2E")
    public static let redOrange50 = Color(hex: "#FF5E00")
    public static let redOrange40 = Color(hex: "#C94A00")
    public static let redOrange30 = Color(hex: "#913500")
    public static let redOrange20 = Color(hex: "#592100")
    public static let redOrange10 = Color(hex: "#290F00")
    
    // Lime
    public static let lime99 = Color(hex: "#F8FFF2")
    public static let lime95 = Color(hex: "#E6FFD4")
    public static let lime90 = Color(hex: "#CCFCA9")
    public static let lime80 = Color(hex: "#AEF779")
    public static let lime70 = Color(hex: "#88F03E")
    public static let lime60 = Color(hex: "#6BE016")
    public static let lime50 = Color(hex: "#58CF04")
    public static let lime40 = Color(hex: "#48AD00")
    public static let lime30 = Color(hex: "#347D00")
    public static let lime20 = Color(hex: "#225200")
    public static let lime10 = Color(hex: "#112900")
    
    // Cyan
    public static let cyan99 = Color(hex: "#F7FEFF")
    public static let cyan95 = Color(hex: "#DEFAFF")
    public static let cyan90 = Color(hex: "#B5F4FF")
    public static let cyan80 = Color(hex: "#8AEDFF")
    public static let cyan70 = Color(hex: "#57DFF7")
    public static let cyan60 = Color(hex: "#28D0ED")
    public static let cyan50 = Color(hex: "#00BDDE")
    public static let cyan40 = Color(hex: "#0098B2")
    public static let cyan30 = Color(hex: "#006F82")
    public static let cyan20 = Color(hex: "#004854")
    public static let cyan10 = Color(hex: "#00252B")
    
    // LightBlue
    public static let lightBlue99 = Color(hex: "#F7FDFF")
    public static let lightBlue95 = Color(hex: "#E5F6FE")
    public static let lightBlue90 = Color(hex: "#C4ECFE")
    public static let lightBlue80 = Color(hex: "#A1E1FF")
    public static let lightBlue70 = Color(hex: "#70D2FF")
    public static let lightBlue60 = Color(hex: "#3DC2FF")
    public static let lightBlue50 = Color(hex: "#00AEFF")
    public static let lightBlue40 = Color(hex: "#008DCF")
    public static let lightBlue30 = Color(hex: "#006796")
    public static let lightBlue20 = Color(hex: "#004261")
    public static let lightBlue10 = Color(hex: "#002130")
    
    // Violet
    public static let violet99 = Color(hex: "#FBFAFF")
    public static let violet95 = Color(hex: "#F0ECFE")
    public static let violet90 = Color(hex: "#DBD3FE")
    public static let violet80 = Color(hex: "#C0B0FF")
    public static let violet70 = Color(hex: "#9E86FC")
    public static let violet60 = Color(hex: "#7D5EF7")
    public static let violet50 = Color(hex: "#6541F2")
    public static let violet40 = Color(hex: "#4F29E5")
    public static let violet30 = Color(hex: "#3A16C9")
    public static let violet20 = Color(hex: "#23098F")
    public static let violet10 = Color(hex: "#11024D")
    
    // Purple
    public static let purple99 = Color(hex: "#FEFBFF")
    public static let purple95 = Color(hex: "#F9EDFF")
    public static let purple90 = Color(hex: "#F2D6FF")
    public static let purple80 = Color(hex: "#E9BAFF")
    public static let purple70 = Color(hex: "#DE96FF")
    public static let purple60 = Color(hex: "#D478FF")
    public static let purple50 = Color(hex: "#CB59FF")
    public static let purple40 = Color(hex: "#AD36E3")
    public static let purple30 = Color(hex: "#861CB8")
    public static let purple20 = Color(hex: "#580A7D")
    public static let purple10 = Color(hex: "#290247")
    
    // Pink
    public static let pink99 = Color(hex: "#FFFAFE")
    public static let pink95 = Color(hex: "#FEECFB")
    public static let pink90 = Color(hex: "#FED3F7")
    public static let pink80 = Color(hex: "#FFB8F3")
    public static let pink70 = Color(hex: "#FF94ED")
    public static let pink60 = Color(hex: "#FA73E3")
    public static let pink50 = Color(hex: "#F553DA")
    public static let pink40 = Color(hex: "#D331B8")
    public static let pink30 = Color(hex: "#A81690")
    public static let pink20 = Color(hex: "#730560")
    public static let pink10 = Color(hex: "#3D0133")
}
