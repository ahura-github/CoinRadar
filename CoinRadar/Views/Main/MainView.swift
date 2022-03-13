//
//  MainView.swift
//  CoinRadar
//
//  Created by Amirreza Zarepour on 3/3/22.
//

import SwiftUI

struct MainView: View {
    
    //MARK: - Vars
    @State var searchString: String = ""
    
    //MARK: - MainBody
    var body: some View {
        VStack{
            HStack{
                CustomSearchbar(searchString: $searchString)
                   
                
                Spacer()
                
                CircleButton(iconName: "info")
            }
            .padding(.horizontal)
            
            
            Spacer()
                .navigationBarHidden(true)
        }
    }
}

struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}
