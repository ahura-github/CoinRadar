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
    @StateObject private var viewModel = MainViewModel()
    
    //MARK: - MainBody
    var body: some View {
        VStack{
            HStack{
                CustomSearchbar(searchString: $searchString)
                    
                   
                
                Spacer()
                
                CircleButton(iconName: "info")
                    .onTapGesture {
                        viewModel.toggleShowInfo()
                    }
            }
            .padding(.horizontal, 25)
            
      
            StatisticScrollView(stats: DeveloperPreview.instance.stats)
            
            TopBarModesView()
            
            Spacer()
                .navigationBarHidden(true)
        }
        .sheet(isPresented: $viewModel.shouldShowInfo) {
            InfoView()
        }
    }
}

struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            MainView()
                .previewDevice("iPhone 13 mini")
//            MainView()
//                .previewDevice("iPhone 8 Plus")

//            MainView()
//                .previewDevice("iPhone 8")
//            MainView()
//                .previewDevice("iPhone 13 Pro Max")
        }
    }
}

extension MainView{
   
}
