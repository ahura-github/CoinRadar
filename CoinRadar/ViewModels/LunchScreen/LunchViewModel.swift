//
//  LunchView.swift
//  CoinRadar
//
//  Created by Amirreza Zarepour on 3/1/22.
//

import Foundation
import protocol SwiftUI.ObservableObject
import struct SwiftUI.CGFloat
import struct SwiftUI.Color


class LunchViewModel: ObservableObject{
    @Published var fontSize:  CGFloat    = 0.0
    @Published var textColor: Color      = Color.clear
    @Published var showLoadingText       = false
    @Published var loadingText: [String] = "Coin Radar....".map{String($0)}
    @Published var textAnimationCounter  = -1
    @Published var numberOfExecutedLoops = 0
    @Published var showLunchView         = true
    
    let timer = Timer.publish(every: 0.1, on: .main, in: .common).autoconnect()
    
    func setStyle(forIndex index: Int) -> (Color, CGFloat){
        switch index{
            case 10:
                return (Color.primaries.first.rawValue.associatedColor, 25.0)
            
            case 11:
                return (Color.primaries.second.rawValue.associatedColor, 25.0)
           
            case 12:
                return (Color.primaries.third.rawValue.associatedColor, 25.0)
           
            case 13:
                return (Color.primaries.fourth.rawValue.associatedColor, 25.0)
           
            default:
                return (Color.secondaries.first.rawValue.associatedColor, 17.0)

            
        }
    }
    
    func animation(){
        if textAnimationCounter == loadingText.count - 1 {
            textAnimationCounter      = 0
            numberOfExecutedLoops    += 1
            if numberOfExecutedLoops >= 2 {
                showLunchView = false
            }
        }else {
            textAnimationCounter += 1
        }
    }
}
