//
//  ContentView.swift
//  CoinRadar
//
//  Created by Amirreza Zarepour on 3/1/22.
//

import SwiftUI

struct ContentView: View {
    
    @State private var selectedTab = Tabs.stat
    
    var body: some View {
        VStack{
            
            if selectedTab == .stat{
                MainView()
            }
            
            if selectedTab == .portfolio{
                PortfolioView()
            }
            
            if selectedTab == .setting{
                SettingView()
            }
            
            Spacer(minLength: 0)
            
            TabBarView(selectedTab: $selectedTab)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
