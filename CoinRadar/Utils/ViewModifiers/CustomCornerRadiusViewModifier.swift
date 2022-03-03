//
//  CustomCornerRadiusViewModifier.swift
//  CoinRadar
//
//  Created by Amirreza Zarepour on 3/3/22.
//

import SwiftUI

struct CustomCornerRadiusViewModifier: ViewModifier {
    
    let radii: CGFloat
    let corners: UIRectCorner
    
    func body(content: Content) -> some View {
        content
            .clipShape(CustomCornerRadiusPath(radii: radii, corners: corners))
    }
}
