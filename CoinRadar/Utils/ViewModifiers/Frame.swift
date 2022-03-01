//
//  Frame.swift
//  CoinRadar
//
//  Created by Amirreza Zarepour on 3/1/22.
//
import struct SwiftUI.Alignment
import struct SwiftUI.CGFloat
import protocol SwiftUI.View
import protocol SwiftUI.ViewModifier

struct Frame: ViewModifier{
    
    let size: CGFloat
    let alignment: Alignment
    
    func body(content: Content) -> some View {
        content
            .frame(width: size, height: size, alignment: alignment)
    }
}
