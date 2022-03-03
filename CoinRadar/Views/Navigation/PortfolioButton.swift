//
//  PortfolioButton.swift
//  CoinRadar
//
//  Created by Amirreza Zarepour on 3/3/22.
//

import SwiftUI

struct PortfolioButton: View, CustomButton {
    
    //MARK: - Var
    @Binding var selectedTab: Tabs
    
    var action: CompletionHandler
    
    //MARK: - MainBody
    var body: some View {
        Button(action:{
            selectedTab = .portfolio
            action()
        }){
            if selectedTab == . portfolio{
                selectedState
            }else{
                unselectedState
            }
        }
    }
}

struct PortfolioButton_Previews: PreviewProvider {
    static var previews: some View {
        PortfolioButton(selectedTab: .constant(.portfolio), action: {})
    }
}

extension PortfolioButton{
    //MARK: - View
    private var unselectedState: some View {
        Image(images.Tab.unselectedPortfolio.rawValue)
            .resizable()
            .frame(size: 60)
    }
    private var selectedState: some View {
        Image(images.Tab.selectedPortfolio.rawValue)
            .resizable()
            .frame(size: 60)
    }
}
