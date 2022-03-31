//
//  StatisticCell.swift
//  CoinRadar
//
//  Created by Amirreza Zarepour on 3/30/22.
//

import SwiftUI

struct StatisticCell: View {
   
    //MARK: - Var
    var stat: Statistic
    
    
    //MARK: - MainBody
    var body: some View {
        VStack(alignment: .leading){
            label
            
            HStack(spacing: 10){
                Text(stat.value)
                    .font(.headline)
                
                
                if let percentChange = stat.percentageChange {
                    StatTrend(percentageChange: percentChange)
                }
            }
        }
        .padding(15)
        .background(Color.white)
        .cornerRadius(15)
        .shadow(color: .black.opacity(0.08), radius: 10, x: 0, y: 0)
    }
}

struct StatisticCell_Previews: PreviewProvider {
    static var previews: some View {
        StatisticCell(stat: DeveloperPreview.instance.statPortfolioNegative)
    }
}

extension StatisticCell{
    private var label: some View {
        Text(stat.title)
            .font(.caption)
            .fontWeight(.regular)
            .foregroundColor(.secondary)
        
    }
}

struct StatTrend: View {
    
    var percentageChange: Double
    
    var trendIsIncreasing: Bool {
        percentageChange >= 0
    }
    
    
    var body: some View{
        HStack(spacing: 2){
            
            Image(Image.IconAssets.icreasingArrow.rawValue)
                .renderingMode(.template)
                .resizable()
                .frame(size: 20)
                .rotationEffect(Angle(degrees: trendIsIncreasing ? 0 :  90))
            
            
            
            
            Text(percentageChange.asPercentString())
                .font(.caption)
                .bold()
        }
        .foregroundColor(trendIsIncreasing ? Color.stats.increasing.rawValue.associatedColor : Color.stats.decreasing.rawValue.associatedColor)
        //.padding(8)
        .frame(width: 80)
        .padding(5)
        //.padding(.horizontal, 5)
        .background(trendIsIncreasing ? Color.stats.increasing.rawValue.associatedColor.opacity(0.2) : Color.stats.decreasing.rawValue.associatedColor.opacity(0.2))
        .cornerRadius(5)
        
    }
}
