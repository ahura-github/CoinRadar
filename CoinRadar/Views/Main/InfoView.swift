//
//  InfoView.swift
//  CoinRadar
//
//  Created by Amirreza Zarepour on 3/27/22.
//

import SwiftUI

struct InfoView: View {
    var body: some View {
        
        
        ZStack(alignment: ScreenSize.width > 375.0 ? . center : .bottom) {
            ///My Info
            HStack{
                VStack{
                    profileImage
                    
                    Spacer()
                    
                    
                }
                .frame(width: ScreenSize.width / 3 + 35)
                .background(Color.background.second.rawValue.associatedColor)
                .padding(.leading)
                
                Spacer()
                
                
                
                
               VStack(spacing: 15){
                   VStack(alignment: .leading){
                       name
                       title
                   }
                   HStack(spacing: ScreenSize.width > 375.0 ? 20 : nil){
                       linkedin
                       
                       instagram
                   }
                   .font(.system(size: 13))
                   .padding(.top, 25)
                    
                   
                   aboutMe
                       .padding()
                   
                   
                       
                    Spacer()
                }
               .padding(.trailing, 15)
               .frame(width: 2 * (ScreenSize.width / 3) - 35)
                
               
            }
            
           ///API Info
            VStack{
            HStack{
                apiInfo
                    .padding(.leading)
                Spacer()
                
                coinGecko
                Spacer()
            }
            .padding()
                
                HStack{
                    apiPage
                    
                    Spacer()
                }
                .padding(.leading, 20)
                
                
            }
        }
        .padding(.top, 40)
    }
}

struct InfoView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            InfoView()
            InfoView()
                .previewDevice("iPhone 13 Pro Max")
        }
    }
}

extension InfoView{
    private var profileImage: some View {
        Image(Image.InfoAssets.developerPic.rawValue)
            .resizable()
            .scaledToFill()

            .frame(size: ScreenSize.width / 3)
            .clipped()
            .cornerRadius(10)
    }
    private var name:         some View {
        Text("Amirreza Zare")
            .font(.title)
            .foregroundColor(.secondaries.third.rawValue.associatedColor)
            .fontWeight(.semibold)
    }
    private var title:        some View {
        Text("iOS Engineer")
            .font(.caption)
            .foregroundColor(.secondary)
    }
    private var linkedin:     some View {
        Button(action: {}){
            Text("Linkedin")
                .fontWeight(.medium)
                .foregroundColor(.white.opacity(0.8))
                .padding()
                .background(Color.secondaries.fourth.rawValue.associatedColor)
                .cornerRadius(15)
        }
    }
    private var instagram:    some View {
        Button(action: {}){
            Text("Instagram")
                .fontWeight(.medium)
                .foregroundColor(Color.secondaries.fourth.rawValue.associatedColor)
                .padding()
                .overlay(
                
                    RoundedRectangle(cornerRadius: 15)
                        .stroke(lineWidth: 1)
                        .foregroundColor(Color.secondaries.fourth.rawValue.associatedColor)
                )
                
        }
    }
    private var aboutMe:      some View {
        VStack(alignment: .leading, spacing: 10){
            Text("I'm a  book lover who enjoys reading by the sea.")
            
            
            
            Text("I love beautiful UI designs and am also interested in data structures and algorithms.")
               
        }
        .multilineTextAlignment(.leading)
        .foregroundColor(.secondaries.third.rawValue.associatedColor)
    }
    private var coinGecko:    some View {
        Image(Image.InfoAssets.coingeckoLogo.rawValue)
            .resizable()
            .scaledToFit()
            .frame(size: ScreenSize.width / 3)
            .clipped()
            .cornerRadius(10)
    }
    private var apiInfo:      some View {
        Text("The data which is powered this app come from Coin Gecko Website. Prices may be slightly delaied due to API Provider Free Usage Policy")
            .font(.callout)
            .fontWeight(.medium)
            .foregroundColor(.secondary)
            .frame(width: ScreenSize.width / 3)
            .clipped()
    }
    private var apiPage:      some View {
        Button(action: {}){
            Text("API Page")
                .fontWeight(.medium)
                .foregroundColor(.white.opacity(0.8))
                .padding()
                .background(Color.secondaries.fourth.rawValue.associatedColor)
                .cornerRadius(15)
        }
    }
    
}
