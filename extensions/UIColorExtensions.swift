//  UIColorExtensions.swift
//  Created by Amar Kanala on 4/23/15.
//  Copyright (c) 2015 Amar Kanala. All rights reserved.

import Foundation
import UIKit

extension UIColor {

    /*
     * Convenience initializer
     * Usage:
     * var darkGrayColor: UIColor = UIColor(hex: 020000)
    */
    public convenience init(hex: Int) {
        let red: CGFloat   = CGFloat((hex & 0xFF0000) >> 16) / 255.0
        let green: CGFloat = CGFloat((hex & 0x00FF00) >> 8)  / 255.0
        let blue: CGFloat  = CGFloat((hex & 0x0000FF) >> 0)  / 255.0
        let alpha: CGFloat = 1
        
        self.init(red: red, green: green, blue: blue, alpha: alpha)
    }
}