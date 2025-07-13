//
//  UIcolor+Ext.swift
//  colorapp
//
//  Created by MacBook Pro on 12/07/2025.
//

import UIKit
//extension for UI colors
extension UIColor {
    
    static func randomColor() -> UIColor {
        let randomcolors=UIColor(red: CGFloat.random(in: 0...1), green: CGFloat.random(in: 0...1), blue: CGFloat.random(in: 0...1), alpha: 1)
        return randomcolors
        
    }
}

