//
//  ContentView.swift
//  WordleSwiftUI
//
//  Created by Christopher Walter on 4/6/22.
//

import SwiftUI



struct ContentView: View {
    
    var letterRow1 = ["Q", "W", "E", "R", "T", "Y", "U", "I", "O", "P"]
    var letterRow2 = ["A", "S", "D", "F", "G", "H", "J", "K", "L"]
    var letterRow3 = ["Z", "X", "C", "V", "B", "N", "M"]
    var body: some View {

            VStack {
                Text("WORDLE")
                    .padding()
                    .font(.largeTitle)
                GuessRow(guess: "")
                GuessRow(guess: "")
                GuessRow(guess: "")
                GuessRow(guess: "")
                GuessRow(guess: "")
                GuessRow(guess: "")
  
                HStack(alignment: .center, spacing: 5) {
                    ForEach(letterRow1, id: \.self) {
                        letter in
                        LetterButton(symbol: letter)
                            .frame(minWidth: 0, maxWidth: (UIScreen.main.bounds.width - 65)/10)
                            
                    }
                    
                }
                HStack(alignment: .center, spacing: 5) {
                    ForEach(letterRow2, id: \.self) {
                        letter in
                        LetterButton(symbol: letter)
                            .frame(minWidth: 0, maxWidth: (UIScreen.main.bounds.width - 65)/10)
                            
                    }
                    
                }
                HStack(alignment: .center, spacing: 5) {
                    Button(action: {
                        
                    }) {
                        LetterButton(symbol: "ENTER")
                    }
                        .frame(minWidth: 0, maxWidth: (UIScreen.main.bounds.width - 65)/10)
                    
                    ForEach(letterRow3, id: \.self) {
                        letter in
                        LetterButton(symbol: letter)
                            .frame(minWidth: 0, maxWidth: (UIScreen.main.bounds.width - 65)/10)
                            
                    }
                    Button(action: {
                        
                    }) {
                        LetterButton(symbol: "DELETE")
                    }
                        .frame(minWidth: 0, maxWidth: (UIScreen.main.bounds.width - 65)/10)
                    
                    
                }
                
                .frame(minWidth: 0, maxWidth: .infinity)
                
               
            }
            .padding(5)
            .frame(minWidth: 0, maxWidth: .infinity)
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
