//
//  Device.swift
//  CoinRadar
//
//  Created by Amirreza Zarepour on 3/3/22.
//

import SwiftUI


enum Device{
    enum Screen{
        enum Size{
            static let width  = UIScreen.main.bounds.width
            static let height = UIScreen.main.bounds.height
        }
    }
    
    enum Model: String{
        case iphone8        = "iPhone 8"
        case iphone8Plus    = "iPhone 8 Plus"
        case iphone11       = "iPhone 11"
        case iphone11Pro    = "iPhone 11 Pro"
        case iphone11ProMax = "iPhone 11 Pro Max"
        case iphone13Pro    = "iPhone 13 Pro"
        case iphone13ProMax = "iPhone 13 Pro Max"
        case iphone13mini   = "iPhone 13 mini"
    }
}
