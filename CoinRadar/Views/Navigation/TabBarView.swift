//
//  TabBar.swift
//  CoinRadar
//
//  Created by Amirreza Zarepour on 3/3/22.
//

import SwiftUI

struct TabBarView: View {
    
    @State var pressed = false
    var body: some View {
        VStack{
            Spacer()
            
            ZStack{
                
                background
                
                tabs
            }
        }
        .ignoresSafeArea()
        
    }
}

struct TabBarView_Previews: PreviewProvider {
    static var previews: some View {
        TabBarView()
    }
}

extension TabBarView{
    private var background: some View {
        Rectangle()
            .frame(width: deviceSize.width, height: 125)
            .cornerRadius(radii: 50, corners: [.topLeft, .topRight])
            .foregroundColor(Color.secondaries.second.rawValue.associatedColor)
            .shadow(color: Color.black.opacity(0.1), radius: 10, x: 0, y: -10)
    }
    private var tabs:       some View {
        HStack(alignment: .center){
           
            Spacer()
            
            Button(action: {
                pressed.toggle()
            }){
                if pressed{
                    HStack(spacing: 0){
                        Text(".")
                            .foregroundColor(Color.primaries.first.rawValue.associatedColor)
                        
                        Text(".")
                            .foregroundColor(Color.primaries.second.rawValue.associatedColor)
                        
                        Text(".")
                            .foregroundColor(Color.primaries.third.rawValue.associatedColor)
                    }
                        .font(.system(size: 55))
                        .offset(y: -15)
                }else {
                    HStack(spacing: 0){
                        Text(".")
                            .foregroundColor(Color(hex: "818589"))
                        
                        Text(".")
                            .foregroundColor(Color(hex: "C0C0C0"))
                        
                        Text(".")
                            .foregroundColor(Color(hex:"D3D3D3"))
                    }
                        .font(.system(size: 55))
                        .offset(y: -15)
                }
            }
            
            
            Spacer()
            
            ZStack{

            }
            
            
           
            
            Spacer()
                
            
                
            Spacer()
            
        }
    }
}
