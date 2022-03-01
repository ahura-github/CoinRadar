//
//  CoinRadarApp.swift
//  CoinRadar
//
//  Created by Amirreza Zarepour on 3/1/22.
//

import SwiftUI

@main
struct CoinRadarApp: App {
    
    //MARK: - Vars
    @State private var showLunchView   = true
    
    
    //MARK: - Scene
    var body: some Scene {
        WindowGroup {
            ZStack{
                NavigationView{
                    ContentView()
                }
                .navigationViewStyle(StackNavigationViewStyle())
                // .environmentObject(viewModel)
                
                ZStack{
                    if showLunchView{
                        LunchView(showLunchView: $showLunchView)
                            .transition(.move(edge: .leading))
                    }
                }
                .zIndex(2.0)
            }
        }
    }
}
