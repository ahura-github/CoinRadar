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
            case logo = "logo"
        }
        enum Tab: String{
            case selectedStats       = "bitcoin"
            case unselectedStats     = "bitcoinGray"
            case selectedPortfolio   = "wallet"
            case unselectedPortfolio = "walletGray"
        }
    }
}

typealias images = Assets.Images

