//
//  TabBar.swift
//  CoinRadar
//
//  Created by Amirreza Zarepour on 3/3/22.
//

import SwiftUI

struct TabBarView: View {
    
    @Binding var selectedTab: Tabs
    
    //MARK: - MainBody
    var body: some View {
        ZStack{
            background
            
            tabs
        }.frame(maxWidth: .infinity)
            .ignoresSafeArea()
        
    }
}

struct TabBarView_Previews: PreviewProvider {
    static var previews: some View {
        TabBarView(selectedTab: .constant(.portfolio))
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
            
            StatButton(selectedTab: $selectedTab) {
                print("Stat button is pressed")
            }
            
            Spacer()
            
            PortfolioButton(selectedTab: $selectedTab) {
                print("Portfolio button is pressed")
            }
            
            Spacer()
                
            SettingButton(selectedTab: $selectedTab) {
                print("Setting button is presss")
            }
                
            Spacer()
            
        }
    }
}
