//
//  VColor.swift
//  VKit_Example
//
//  Created by Vic Zhou on 11/10/14.
//  Copyright (c) 2014 everycode. All rights reserved.
//

import UIKit

public extension UIColor {

/**
* @brief
*
* Detailed
* @param[in]
* @param[out] N/A
* @return
* @note
*/

    public convenience init(rgba: String) {
        var red:   CGFloat = 0.0
        var green: CGFloat = 0.0
        var blue:  CGFloat = 0.0
        var alpha: CGFloat = 1.0

        if rgba.hasPrefix("#") {
            let index   = advance(rgba.startIndex, 1)
            let hex     = rgba.substringFromIndex(index)
            let scanner = NSScanner(string: hex)
            var hexValue: CUnsignedLongLong = 0
            if scanner.scanHexLongLong(&hexValue) {
                if count(hex) == 6 {
                    red   = CGFloat((hexValue & 0xFF0000) >> 16) / 255.0
                    green = CGFloat((hexValue & 0x00FF00) >> 8)  / 255.0
                    blue  = CGFloat(hexValue & 0x0000FF) / 255.0
                } else if count(hex) == 8 {
                    red   = CGFloat((hexValue & 0xFF000000) >> 24) / 255.0
                    green = CGFloat((hexValue & 0x00FF0000) >> 16) / 255.0
                    blue  = CGFloat((hexValue & 0x0000FF00) >> 8)  / 255.0
                    alpha = CGFloat(hexValue & 0x000000FF)         / 255.0
                } else {
                    print("invalid rgb string, length should be 7 or 9")
                }
            } else {
                println("scan hex error")
            }
        } else {
            print("invalid rgb string, missing '#' as prefix")
        }
        self.init(red:red, green:green, blue:blue, alpha:alpha)
    }
    
/**
* @brief
*
* Detailed
* @param[in]
* @param[out] N/A
* @return
* @note
*/
    public convenience init(intRed: NSInteger, intGreen: NSInteger, intBlue: NSInteger, alpha: CGFloat) {
        var red:   CGFloat = CGFloat(intRed) / 255.0
        var green: CGFloat = CGFloat(intGreen) / 255.0
        var blue:  CGFloat = CGFloat(intBlue) / 255.0
        self.init(red:red, green:green, blue:blue, alpha:alpha)
    }
}

