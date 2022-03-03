//
//  StatButton.swift
//  CoinRadar
//
//  Created by Amirreza Zarepour on 3/3/22.
//

import SwiftUI

struct StatButton: View, CustomButton {
    
    //MARK: - Var
    @Binding var selectedTab: Tabs
    var action: CompletionHandler
    
    //MARK: - MainBody
    var body: some View {
        Button(action:{
            selectedTab = .stat
            action()
        }){
            if selectedTab == .stat {
                selectedState
            }else {
                unselectedState
            }
        }
    }
}

struct StatButton_Previews: PreviewProvider {
    static var previews: some View {
        StatButton(selectedTab: .constant(.stat), action: {})
    }
}
extension StatButton {
    //MARK: - Views
    private var unselectedState: some View {
        Image(images.Tab.unselectedStats.rawValue)
            .resizable()
            .frame(size: 40)
    }
    private var selectedState:   some View {
        Image(images.Tab.selectedStats.rawValue)
            .resizable()
            .frame(size: 40)
    }
}
