//
//  CustomTextField.swift
//  CoinRadar
//
//  Created by Amirreza Zarepour on 3/13/22.
//

import SwiftUI

struct SearchField: UIViewRepresentable{
   
    @Binding var text: String
    @Binding var isFirstResponder: Bool
    
    let placeHolder: String
    
    class Coordinator: NSObject, UITextFieldDelegate{
        
        @Binding var text: String
        
        init(text: Binding<String>, isFirstResponder: Binding<Bool>){
            self._text                 = text
        }
        
        func textFieldDidChangeSelection(_ textField: UITextField) {
            text = textField.text ?? ""
        }
    }
    
    func makeUIView(context: Context) -> some UIView {
        let textField         = UITextField()
        textField.placeholder = placeHolder
        textField.delegate    = context.coordinator
        
        textField.setContentCompressionResistancePriority(.defaultLow, for: .horizontal)
        textField.setContentCompressionResistancePriority(.defaultLow, for: .vertical)
        
        
        return textField
    }
    
    func updateUIView(_ uiView: UIViewType, context: Context) {
        if isFirstResponder == true{
            uiView.becomeFirstResponder()
        }
    }
    
    func makeCoordinator() -> Coordinator {
        return Coordinator(text: $text, isFirstResponder: $isFirstResponder)
    }
    
    
    
}
