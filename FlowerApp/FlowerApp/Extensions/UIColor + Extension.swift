//
//  UIColor + Extension.swift
//  FlowerApp
//
//  Created by Евгений on 25.12.21.
//

import Foundation
import UIKit

extension UIColor {
   
    class func accentColor() -> UIColor {
        if let accentColor = UIColor(named: "AccentColor") {
            return accentColor
        }
        return UIColor.black
    }
    
    class func customGreenColor() -> UIColor {
        if let customGreenColor = UIColor(named: "CustomGreenColor") {
            return customGreenColor
        }
        return UIColor.black
    }
    
    class func customPinkColor() -> UIColor {
        if let customPinkColor = UIColor(named: "CustomPinkColor") {
            return customPinkColor
        }
        return UIColor.black
    }
    
    class func mainLabelColor() -> UIColor {
        if let mainLabelColor = UIColor(named: "MainLabelColor") {
            return mainLabelColor
        }
        return UIColor.black
    }
    
    class func secondaryColor() -> UIColor {
        if let secondaryColor = UIColor(named: "SecondaryColor") {
            return secondaryColor
        }
        return UIColor.black
    }
    
    class func secondaryLabelColor() -> UIColor {
        if let secondaryLabelColor = UIColor(named: "SecondaryLabelColor") {
            return secondaryLabelColor
        }
        return UIColor.black
    }
    
    class func tertiaryColor() -> UIColor {
        if let tertiaryColor = UIColor(named: "TertiaryColor") {
            return tertiaryColor
        }
        return UIColor.black
    }
    
    class func mainColor() -> UIColor {
        if let mainColor = UIColor(named: "MainColor") {
            return mainColor
        }
        return UIColor.black
    }
    
}
