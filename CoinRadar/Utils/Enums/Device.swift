//
//  Device.swift
//  CoinRadar
//
//  Created by Amirreza Zarepour on 3/3/22.
//

import SwiftUI

typealias deviceSize = Device.Size

enum Device{
    enum Size{
        static let width  = UIScreen.main.bounds.width
        static let height = UIScreen.main.bounds.height
    }
}
