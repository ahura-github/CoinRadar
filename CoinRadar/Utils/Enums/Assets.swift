//
//  Assets.swift
//  CoinRadar
//
//  Created by Amirreza Zarepour on 3/1/22.
//

import Foundation


enum Assets{
    enum Images{
        enum Icons: String{
            case logo           = "logo"
            case microphone     = "microphone"
            case icreasingArrow = "increaseArrow"
        }
        enum Tab: String{
            case selectedStats       = "bitcoin"
            case unselectedStats     = "bitcoinGray"
            case selectedPortfolio   = "wallet"
            case unselectedPortfolio = "walletGray"
        }
        
        enum Info: String {
            case developerPic  = "developer"
            case coingeckoLogo = "coingecko"
        }
    }
}

typealias images = Assets.Images

