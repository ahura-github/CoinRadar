//
//  View.swift
//  CoinRadar
//
//  Created by Amirreza Zarepour on 3/1/22.
//

import SwiftUI


extension View{
        
    public func frame(size: CGFloat, alignment: Alignment = .center) -> some View{
        modifier(FrameViewModifier(size: size, alignment: alignment))
    }
    
    public func frame(width: CGFloat, height: CGFloat) -> some View{
        self.frame(width: width, height: height, alignment: .center)
    }
    
    public func cornerRadius(radii: CGFloat, corners: UIRectCorner = .allCorners) -> some View{
        modifier(CustomCornerRadiusViewModifier(radii: radii, corners: corners))
    }
}
