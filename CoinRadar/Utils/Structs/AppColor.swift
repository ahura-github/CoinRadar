//
//  AppColor.swift
//  CoinRadar
//
//  Created by Amirreza Zarepour on 3/1/22.
//

import Foundation
import struct SwiftUI.Color

struct AppColor: Equatable, ExpressibleByStringLiteral{
    
    //MARK: - Initializer
    init(stringLiteral value: StringLiteralType){
        associatedName = value
    }
    
    //MARK: - Variables
    var associatedName:  String
    var associatedColor: Color{
        return Color("\(associatedName)")
    }
    
}
