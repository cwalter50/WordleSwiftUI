//
//  ContentView.swift
//  WordleSwiftUI
//
//  Created by Christopher Walter on 4/6/22.
//

import SwiftUI



struct ContentView: View {
    
    var letters = ["Q", "W", "E", "R", "T", "Y", "U", "I", "O", "P"]
    var body: some View {

            VStack {
                Text("WORDLE")
                    .padding()
                    .font(.largeTitle)
                GuessRow(guess: "     ")
                GuessRow(guess: "     ")
                GuessRow(guess: "     ")
                GuessRow(guess: "     ")
                GuessRow(guess: "     ")
                GuessRow(guess: "     ")
                HStack(alignment: .center, spacing: 1) {
                    ForEach(letters, id: \.self) {
                        letter in
                        LetterButton(symbol: letter)
                    }
                    
                }
            }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
