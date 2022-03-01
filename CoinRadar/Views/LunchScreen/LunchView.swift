//
//  LunchView.swift
//  CoinRadar
//
//  Created by Amirreza Zarepour on 3/1/22.
//

import SwiftUI

struct LunchView: View {
    
    //MARK: - Variables
    @Binding var showLunchView: Bool

    @StateObject private var viewModel = LunchViewModel()
        
    //MARK: - MainBody
    var body: some View {
        ZStack{
            background
            logoImage
            
            ZStack{
                if viewModel.showLoadingText {
                        textView
                            .transition(AnyTransition.scale.animation(.easeIn))
                }
            }
            .offset(y: 70)
        }
        .onAppear {
            self.viewModel.showLoadingText.toggle()
        }
        .onReceive(viewModel.timer) { _ in
            withAnimation(.spring()){
                viewModel.animation()
                self.showLunchView = self.viewModel.showLunchView
            }
        }
    }
}

struct LunchView_Previews: PreviewProvider {
    static var previews: some View {
        LunchView(showLunchView: .constant(true))
    }
}

extension LunchView{
    //MARK: - Views
    ///BackgroundColor
    private var background: some View {
        Color.background.first.rawValue.associatedColor
            .ignoresSafeArea()
    }
    ///BitcoinImage
    private var logoImage:  some View {
        Image(images.Icons.logo.rawValue)
            .resizable()
            .frame(size: 120)
    }
    private var textView:   some View {
        HStack(spacing: 0){
            ForEach(viewModel.loadingText.indices){ index in
                Text(viewModel.loadingText[index])
                    .font(.system(size: viewModel.setStyle(forIndex: index).1))
                    .foregroundColor(viewModel.setStyle(forIndex: index).0)
                    .fontWeight(.heavy)
                    .offset(y: viewModel.textAnimationCounter == index ? -5 : 0)
            }
        }
    }
}
