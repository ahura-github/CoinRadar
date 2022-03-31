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
        VStack(alignment: .leading, spacing: -5){
            
           title
            
        ScrollView(.horizontal, showsIndicators: false){
            
           Hscrollview
        }
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

extension StatisticScrollView {
    private var usdSymbol:   some View {
        HStack(spacing: 0){
            Image(Image.IconAssets.dollar.rawValue)
                .resizable()
                .scaledToFit()
                .frame(width: 15)
            
            Text("USD")
                .font(.caption)
                .fontWeight(.medium)
        }
    }
    private var title:       some View {
        HStack{
            Text("Live prices")
                .font(.headline)
                .fontWeight(.semibold)
            
            Spacer(minLength: 0)
            
            usdSymbol
        }
        .padding(.horizontal)
    }
    private var Hscrollview: some View {
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
