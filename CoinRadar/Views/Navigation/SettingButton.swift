//
//  SettingButton.swift
//  CoinRadar
//
//  Created by Amirreza Zarepour on 3/3/22.
//

import SwiftUI

struct SettingButton: View, CustomButton {
    
    //MARK: - Vars
    @Binding var selectedTab: Tabs
    
    var action: CompletionHandler
    
    //MARK: - MainBody
    var body: some View {
        Button(action: {
            selectedTab = .setting
            action()
        }){
            if selectedTab == .setting{
                selectedState
            }
            else {
               unselectedState
            }
        }
    }
}

struct SettingButton_Previews: PreviewProvider {
    static var previews: some View {
        SettingButton(selectedTab: .constant(.setting), action: {})
    }
}

extension SettingButton{
    //MARK: - Views
    private var unselectedState: some View {
        HStack(spacing: 0){
            Text(".")
                .foregroundColor(Color(hex: "818589"))
            
            Text(".")
                .foregroundColor(Color(hex: "C0C0C0"))
            
            Text(".")
                .foregroundColor(Color(hex:"D3D3D3"))
        }
            .font(.system(size: 55))
            .offset(y: -15)
    }
    private var selectedState:   some View {
        HStack(spacing: 0){
            Text(".")
                .foregroundColor(Color.primaries.first.rawValue.associatedColor)
            
            Text(".")
                .foregroundColor(Color.primaries.second.rawValue.associatedColor)
            
            Text(".")
                .foregroundColor(Color.primaries.third.rawValue.associatedColor)
        }
            .font(.system(size: 55))
            .offset(y: -15)
    }
}
