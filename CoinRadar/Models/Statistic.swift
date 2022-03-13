//
//  Statistic.swift
//  CoinRadar
//
//  Created by Amirreza Zarepour on 3/13/22.
//

import Foundation

struct Statistic: Identifiable{
    let id = UUID().uuidString
    
    let title:            String
    let value:            String
    let percentageChange: Double?
    
    init(title: String, value: String, percentage: Double? = nil){
        self.title            = title
        self.value            = value
        self.percentageChange = percentage
    }
    
}
