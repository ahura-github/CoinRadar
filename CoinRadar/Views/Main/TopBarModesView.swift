//
//  TopBarModesView.swift
//  CoinRadar
//
//  Created by Amirreza Zarepour on 3/31/22.
//

import SwiftUI

struct TopBarModesView: View {
    
    //MARK: - Var
    @State var mode: Modes = .coins
    @Namespace private var namespace
    
    //MARK: - MainBody
    var body: some View {
        HStack(spacing: 3){
            coins
                
            
            Spacer()
            favorites
                
            
            Spacer()
            last24hRep
            
            Spacer()
            exchanges
            
        }
        .font(ScreenSize.width > 375.0 ? .headline : .subheadline)
        .padding(.horizontal)
        .animation(.default, value: mode)
    }
}

struct TopBarModesView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
//            TopBarModesView()
//                .previewDevice("iPhone 13 mini")
//            TopBarModesView()
//                .previewDevice("iPhone 8 Plus")

            TopBarModesView()
                .previewDevice("iPhone 8")
//            TopBarModesView()
//                .previewDevice("iPhone 13 Pro Max")
        }
    }
}

extension TopBarModesView{
    
    private var selector: some View {
        HStack(spacing: 5){
            RoundedRectangle(cornerRadius: 5)
                .frame(width: 25, height: 2)
               
            Circle()
                .frame(size: 4)
            
        }
        .foregroundColor(.secondaries.fourth.rawValue.associatedColor)
    }
    
    private var coins:      some View {
        
        VStack{
            
        Text(Modes.coins.rawValue)
            .foregroundColor( mode == .coins ?
                                .secondaries.fourth.rawValue.associatedColor :
                                    .black.opacity(0.8)
            )
            
            if mode == .coins {
                selector
                    .matchedGeometryEffect(id: Keys.MatchedGeometryIDS.topBarModes.rawValue, in: namespace)
            }
               
                
        }
        .onTapGesture {
            
            mode = .coins
            
            
        }
    }
    private var favorites:  some View {
        VStack {
            Text(Modes.favorites.rawValue)
                .foregroundColor(mode == .favorites ?
                                    .secondaries.fourth.rawValue.associatedColor :
                                    .black.opacity(0.8)
                )
               
            if mode == .favorites{
                selector
                    .matchedGeometryEffect(id: Keys.MatchedGeometryIDS.topBarModes.rawValue, in: namespace)
            }
                
                
        }
        .onTapGesture {
            
                mode = .favorites
            
            
    }
    }
    private var last24hRep: some View {
        VStack {
            Text(Modes.last24hReport.rawValue)
                .foregroundColor(mode == .last24hReport ?
                                    .secondaries.fourth.rawValue.associatedColor :
                                    .black.opacity(0.8)
                )
                
            if mode == .last24hReport {
                selector
                    .matchedGeometryEffect(id: Keys.MatchedGeometryIDS.topBarModes.rawValue, in: namespace)
            }
        }
        .onTapGesture {
            
                mode = .last24hReport
            
           
    }
    }
    private var exchanges:  some View {
        VStack {
            Text(Modes.exchanges.rawValue)
                .foregroundColor(mode == .exchanges ?
                                    .secondaries.fourth.rawValue.associatedColor :
                                    .black.opacity(0.8)
                )
              
            if mode == .exchanges{
            
            selector
                .matchedGeometryEffect(id: Keys.MatchedGeometryIDS.topBarModes.rawValue, in: namespace)
            }
                
        }
        .onTapGesture {
           
                mode = .exchanges
            
            
    }
    }
}
