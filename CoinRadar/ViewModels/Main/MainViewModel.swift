//
//  MainViewModel.swift
//  CoinRadar
//
//  Created by Amirreza Zarepour on 3/27/22.
//

import Foundation

final class MainViewModel: ObservableObject{
    @Published var shouldShowInfo = false
    
    
    func toggleShowInfo(){
        shouldShowInfo.toggle()
    }
}
