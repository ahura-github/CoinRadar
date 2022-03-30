//
//  StatisticScrollView.swift
//  CoinRadar
//
//  Created by Amirreza Zarepour on 3/30/22.
//

import SwiftUI

struct StatisticScrollView: View {
    
    //MARK: - Var
    @State var stats: [Statistic]
    //MARK: - MainBody
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false){
            HStack{
                ForEach(stats){ stat in
                    StatisticCell(stat: stat)
                        .padding(.vertical)
                        .padding(.horizontal, 8)
                }
                
            }
            .padding(.horizontal, 20)
        }
    }
}

struct StatisticScrollView_Previews: PreviewProvider {
    static var previews: some View {
        StatisticScrollView(stats: [
            DeveloperPreview.instance.statMarketCap,
            DeveloperPreview.instance.stat24HourVolume,
            DeveloperPreview.instance.statBTCDominance,
            DeveloperPreview.instance.statPortfolioNegative,
        ])
    }
}
