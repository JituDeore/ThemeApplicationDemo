//
//  UIColorClass.swift
//  NewsHunt
//
//  Created by Jitendra Deore on 04/01/18.
//  Copyright © 2018 NewsHunt.com. All rights reserved.
//

import Foundation
import UIKit

@objcMembers

class DHColorHelper: NSObject {
    class func getColor(dhColor: DHColor) -> UIColor {
        return dhColor.color
    }
}

struct ThemeColor {
    let light: UInt32
    let dark: UInt32
}


@objc enum DHColor : Int{
    case appText  = 1
    case appSubText = 2
    case appTabBarBackground = 3
    case appTabSwipeBackground = 4
    case appViewBackground = 5
    case appSubviewBackground = 6
    case appSelectedText = 7
    case appSepratorViewColor = 8
    case appSegmentControlBackground = 9
    case appShowAllStoriesAppTextColors = 10
    case shimmerContentColor = 11
    case shimmberBackgroundColor = 12
    case toastBackGroundColor = 13
    case iShowToastBackgroundColor = 14
    case iShowToastTextColor = 15
    case viewScheduleTextColor = 16
    case viewSceheduleBackgroundColor = 17
    case liveTvChannelNameTextColor = 18
    case channelLiveTexColor = 19
    case channelGroupBackgroundColor = 20
    case channelPlaylistCellBackgroundColor = 21
    case carousalBackgroundColor = 22
    case seperatorColor = 23
    case liveTVSeparatorColor = 24
    case appTabBarUnselectedItemColor = 25
    case languageCellSelected = 26
    case languageCellUnSelected = 27
    case greenTheme = 28
    case onboardingTitleColor = 29
    case disclaimer = 30
    case bannerViewBackgroundColor = 31
    case whiteColorForBuzzDetail = 32
    case blackColorForBuzzDetail = 33
    case appTextSelected = 34
}


extension DHColor {
    private var themeColor: ThemeColor {
        switch self {
        case .appText:
            return ThemeColor(light: 0x181818, dark: 0xE3E3E3)
        case .appSubText:
            return ThemeColor(light: 0xA0A0A0, dark: 0xA0A0A0)
        case .appTabBarBackground:
            return ThemeColor(light: 0xF7F7F7, dark: 0x333333)
        case .appTabSwipeBackground:
            return ThemeColor(light: 0xF7F7F7, dark: 0x505050)
        case .appViewBackground:
            return ThemeColor(light: 0xF7F7F7, dark: 0x111111)
        case .appSubviewBackground:
            return ThemeColor(light: 0xFFFFFF, dark: 0x2B2B2B)
        case .appSelectedText:
            return ThemeColor(light: 0xD00016, dark: 0xDC3B4C)
        case .appSepratorViewColor:
            return ThemeColor(light: 0xCCCCCC, dark: 0x3F3F3F)
        case .appSegmentControlBackground:
            return ThemeColor(light: 0xEBEBEB, dark: 0x888888)
        case .appShowAllStoriesAppTextColors:
            return ThemeColor(light: 0x1172C6, dark: 0x5A9CD6)
        case .shimmerContentColor:
            return ThemeColor(light: 0xDDDDDD, dark: 0x585858)
        case .shimmberBackgroundColor:
            return ThemeColor(light: 0xFFFFFF, dark: 0x767676)
        case .toastBackGroundColor:
            return ThemeColor(light: 0x76BF8F, dark: 0x76BF8F)
        case .iShowToastBackgroundColor:
            return ThemeColor(light: 0x2B2B2B, dark: 0x2B2B2B)
        case .iShowToastTextColor:
            return ThemeColor(light: 0xEEEEEE, dark: 0xEEEEEE)
        case .viewScheduleTextColor:
            return ThemeColor(light: 0x76BF8F, dark: 0x5A9CD6)
        case .viewSceheduleBackgroundColor:
            return ThemeColor(light:0xF1F1F1, dark: 0x111111)
        case .liveTvChannelNameTextColor:
            return ThemeColor(light: 0x373838, dark: 0xE3E3E3)
        case .channelLiveTexColor:
            return ThemeColor(light: 0xFFFFFF, dark: 0xFFFFFF)
        case .channelGroupBackgroundColor:
            return ThemeColor(light: 0xFAFAFA, dark: 0x2B2B2B)
        case .channelPlaylistCellBackgroundColor:
            return ThemeColor(light: 0xFAFAFA, dark: 0x111111)
        case .carousalBackgroundColor:
            return ThemeColor(light: 0xF1F1F1, dark: 0x2B2B2B)
        case .seperatorColor:
            return ThemeColor(light: 0xE0E0E0, dark: 0x8C8C8C)
        case .liveTVSeparatorColor:
            return ThemeColor(light: 0xCCCCCC, dark: 0x535353)
        case .appTabBarUnselectedItemColor:
            return ThemeColor(light: 0xE3E3E3, dark: 0xE3E3E3)
        case .languageCellUnSelected:
            return ThemeColor(light: 0xFFFFFF, dark: 0x505050 )
        case .languageCellSelected:
            return ThemeColor(light: 0xF4FFF9, dark: 0x2B2B2B)
        case .greenTheme:
            return ThemeColor(light: 0x4CAF79, dark: 0x4CAF79)
        case .onboardingTitleColor:
            return ThemeColor(light: 0x454545, dark: 0xE3E3E3)
        case .disclaimer:
            return ThemeColor(light: 0xA0A0A0, dark: 0xA0A0A0)
        case .appTextSelected:
            return ThemeColor(light: 0x4CAF79, dark: 0x4CAF79)
        case .bannerViewBackgroundColor:
            return ThemeColor(light: 0xFFFFFF, dark:0x2D2D2D)
            
        // Dont use this color we are using this only for buzz detail..
        case .blackColorForBuzzDetail:
            return ThemeColor(light: 0x000000, dark: 0x000000)
        case .whiteColorForBuzzDetail:
            return ThemeColor(light: 0xFFFFFF, dark: 0xFFFFFF)
        }
    }
    
    var color: UIColor{
        
        return UIColor(hex6: ThemeManager.sharedThemeManager.isNightMode() ? themeColor.dark : themeColor.light)
    }
}

extension UIColor{
    
    convenience init(hexString: String) {
        
        let hexString: String = (hexString as NSString).trimmingCharacters(in: .whitespacesAndNewlines)
        let scanner          = Scanner(string: hexString as String)
        
        if hexString.hasPrefix("#") {
            scanner.scanLocation = 1
        }
        var color: UInt32 = 0
        scanner.scanHexInt32(&color)
        
        let mask = 0x000000FF
        let r = Int(color >> 16) & mask
        let g = Int(color >> 8) & mask
        let b = Int(color) & mask
        
        let red   = CGFloat(r) / 255.0
        let green = CGFloat(g) / 255.0
        let blue  = CGFloat(b) / 255.0
        self.init(red:red, green:green, blue:blue, alpha:1)
    }
    
    /**
     Creates an UIColor Object based on provided RGB value in integer
     - parameter red:   Red Value in integer
     - parameter green: Green Value in integer
     - parameter blue:  Blue Value in integer
     - returns: UIColor with specified RGB
     */
    
    convenience init(red: Int, green: Int, blue: Int) {
        assert(red >= 0 && red <= 255, "Invalid red component")
        assert(green >= 0 && green <= 255, "Invalid green component")
        assert(blue >= 0 && blue <= 255, "Invalid blue component")
        self.init(red: CGFloat(red) / 255.0, green: CGFloat(green) / 255.0, blue: CGFloat(blue) / 255.0, alpha: 1.0)
    }
}


extension UIColor {
    
    public convenience init(hex6: UInt32, alpha: CGFloat = 1) {
        let divisor = CGFloat(255)
        let red     = CGFloat((hex6 & 0xFF0000) >> 16) / divisor
        let green   = CGFloat((hex6 & 0x00FF00) >>  8) / divisor
        let blue    = CGFloat( hex6 & 0x0000FF       ) / divisor
        self.init(red: red, green: green, blue: blue, alpha: alpha)
    }
}





