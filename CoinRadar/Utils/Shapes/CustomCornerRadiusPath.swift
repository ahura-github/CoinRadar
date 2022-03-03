//
//  CustomCornerRadius.swift
//  CoinRadar
//
//  Created by Amirreza Zarepour on 3/3/22.
//

import SwiftUI

struct CustomCornerRadiusPath: Shape{
    
    let radii: CGFloat
    let corners: UIRectCorner
    
    func path(in rect: CGRect) -> Path {
        let path =
            UIBezierPath(roundedRect: rect, byRoundingCorners: corners, cornerRadii: CGSize(width: radii, height: radii))
        
        return Path(path.cgPath)
    }
}
