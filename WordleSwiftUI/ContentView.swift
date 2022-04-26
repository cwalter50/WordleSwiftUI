//
//  ContentView.swift
//  WordleSwiftUI
//
//  Created by Christopher Walter on 4/6/22.
//

import SwiftUI



struct ContentView: View {
    
    @State var guessPosition = GuessPosition()
    @State var guesses: [String] = ["","","","","",""]
    
    @State private var showErrorAlert = false
    @State private var errorMessage = ""
    
    var letterRow1 = ["Q", "W", "E", "R", "T", "Y", "U", "I", "O", "P"]
    var letterRow2 = ["A", "S", "D", "F", "G", "H", "J", "K", "L"]
    var letterRow3 = ["Z", "X", "C", "V", "B", "N", "M"]
    var body: some View {

            VStack {
                Text("WORDLE")
                    .padding()
                    .font(.largeTitle)
                ForEach(guesses, id: \.self) {
                    guess in
                    GuessRow(guess: guess)
                }

                HStack(alignment: .center, spacing: 5) {
                    ForEach(letterRow1, id: \.self) {
                        letter in
                        
                        Button (action: {
                            guessLetter(letter: letter)
                        }, label: {
                            LetterButton(symbol: letter)
                                .frame(minWidth: 0, maxWidth: (UIScreen.main.bounds.width - 65)/10)
                        })
                    }
                    
                }
                HStack(alignment: .center, spacing: 5) {
                    ForEach(letterRow2, id: \.self) {
                        letter in
                        Button (action: {
                            guessLetter(letter: letter)
                        }, label: {
                            LetterButton(symbol: letter)
                                .frame(minWidth: 0, maxWidth: (UIScreen.main.bounds.width - 65)/10)
                        })
                    }
                    
                }
                HStack(alignment: .center, spacing: 5) {
                    Button(action: {
                        guessWord()
                    }) {
                        LetterButton(symbol: "ENTER")

                    }
                    .frame(minWidth: 0, maxWidth: .infinity)
                    .disabled(guesses[guessPosition.guessRow].count == 5 ? false: true)
                    
                    ForEach(letterRow3, id: \.self) {
                        letter in
                        Button (action: {
                            guessLetter(letter: letter)
                        }, label: {
                            LetterButton(symbol: letter)
                                .frame(minWidth: 0, maxWidth: (UIScreen.main.bounds.width - 65)/10)
                        })
                            
                    }
                    Button(action: {
                        removeLetter()
                    }) {
                        LetterButton(symbol: "DELETE")
                    }
                    .frame(minWidth: 0, maxWidth: .infinity)
                    
                    
                }
                
                .frame(minWidth: 0, maxWidth: .infinity)
                
               
            }
            .padding(5)
            .frame(minWidth: 0, maxWidth: .infinity)
            .alert(isPresented: $showErrorAlert) {
                Alert(title: Text("Error"), message: Text(errorMessage), dismissButton: .cancel())
            }
        
    }
    
    
    func guessLetter(letter: String)
    {
        if guesses[guessPosition.guessRow].count < 5
        {
            guesses[guessPosition.guessRow] += letter
            guessPosition.add1Letter()
        }
        
    }
    
    func removeLetter()
    {
        if guesses[guessPosition.guessRow].count > 0 {
            guesses[guessPosition.guessRow].removeLast()
            guessPosition.remove1Letter()
        }

    }
    
    func guessWord()
    {
        let word = guesses[guessPosition.guessRow]
        
        if !WordList.allPossibleWords.contains(word.lowercased()) {
            errorMessage = "Not a valid word"
            showErrorAlert = true
        }
        else {
            // highlight the colors of the word in the keyboard and guess
        }
    }
    

}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
