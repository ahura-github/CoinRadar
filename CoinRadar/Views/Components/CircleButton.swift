//
//  CircleButton.swift
//  CoinRadar
//
//  Created by Amirreza Zarepour on 3/13/22.
//

import SwiftUI

struct CircleButton: View {
    
    let iconName: String
    
    var body: some View {
        Image(systemName: iconName)
            .font(.headline)
            .foregroundColor(Color.primaries.first.rawValue.associatedColor)
            .frame(size: 50)
            .background(
                Circle()
                    .foregroundColor(Color.white)
            )
            .shadow(color: Color.black.opacity(0.25),
                    radius: 10, x: 0, y: 0)
            .padding()
    }
}

struct CircleButton_Previews: PreviewProvider {
    static var previews: some View {
        Group{
            CircleButton(iconName: "info")
                .previewLayout(.sizeThatFits)
            
            
            CircleButton(iconName: "plus")
                .previewLayout(.sizeThatFits)
                .preferredColorScheme(.dark)
        }
    }
}

