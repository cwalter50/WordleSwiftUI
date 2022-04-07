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

        ZStack {
            RoundedRectangle(cornerRadius: 5, style: .circular)
                .stroke(Color.gray, lineWidth: 3)
                .aspectRatio(0.67, contentMode: .fit)
                .border(Color.secondary, width: 2)
                .background(Color.white)
            Text(symbol)
                .foregroundColor(.black)

                .font(.body)
                .minimumScaleFactor(0.5)
                .scaledToFit()
            
        }
        
            
        
        
    }
}

struct LetterButton_Previews: PreviewProvider {
    static var previews: some View {
        LetterButton(guessPosition: GuessPosition())
    }
}
