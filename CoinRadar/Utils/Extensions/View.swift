//
//  View.swift
//  CoinRadar
//
//  Created by Amirreza Zarepour on 3/1/22.
//

import Foundation
import protocol SwiftUI.View
import struct SwiftUI.Alignment
import struct SwiftUI.CGFloat

extension View{
    public func frame(size: CGFloat, alignment: Alignment = .center) -> some View{
        modifier(Frame(size: size, alignment: alignment))
    }
}
