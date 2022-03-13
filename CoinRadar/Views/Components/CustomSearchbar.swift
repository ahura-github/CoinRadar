//
//  CustomSearchbar.swift
//  CoinRadar
//
//  Created by Amirreza Zarepour on 3/13/22.
//

import SwiftUI

struct CustomSearchbar: View {
    
    //MARK: - Vars
    @Binding var searchString: String
    @State var isFirstResponder = false
    
    //MARK: - MainBody
    var body: some View {
        ZStack{
            border
            
            HStack{
            
                searchField
                                   
                Spacer()
                        
                microphoneButton
            }
        }
        .frame(width: 300, height: 50)
    }
}

struct CustomSearchbar_Previews: PreviewProvider {
    static var previews: some View {
        CustomSearchbar(searchString: .constant(""))
    }
}

extension CustomSearchbar{
    //MARK: - Views
    private var border:           some View {
        RoundedRectangle(cornerRadius: 20)
            .stroke(Color.primaries.first.rawValue.associatedColor.opacity(0.3),
                    lineWidth: 1.5)
    }
    private var searchField:      some View {
        SearchField(text: $searchString,
                    isFirstResponder: $isFirstResponder,
                    placeHolder: "Search by name or symbol ...")
            .padding()
    }
    private var microphoneButton: some View {
        Image(iconAssets.microphone.rawValue)
            .resizable()
            .scaledToFit()
            .frame(size: 35)
            .padding(.trailing, 10)
            .onTapGesture {
                print("is tapped")
                self.isFirstResponder = true
            }
    }
}
