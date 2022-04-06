//
//  LetterButton.swift
//  WordleSwiftUI
//
//  Created by Christopher Walter on 4/6/22.
//

import SwiftUI

struct LetterButton: View {
    @State var symbol: String = "A"
    var body: some View {
        Button(action: {
            
        }){
            Text(symbol)
                .padding(10)
                .background(Color.white)
                .foregroundColor(.black)
                .border(Color.secondary, width: 2)
                .cornerRadius(5)
                .font(.body)
                
        }
    }
}

struct LetterButton_Previews: PreviewProvider {
    static var previews: some View {
        LetterButton()
    }
}
