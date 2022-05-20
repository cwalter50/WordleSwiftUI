//
//  ContentView.swift
//  WordleSwiftUI
//
//  Created by Christopher Walter on 4/6/22.
//

import SwiftUI



struct ContentView: View {
    
    
    @StateObject var vm = HomeViewModel() // this contains the guesses, guessPosition, letterColorDictionary, and answer

    
    @State private var showErrorAlert = false
    @State private var errorMessage = ""
    
    @State var color = Color.theme.gray
    
    
//    @StateObject var letterColors = LetterColors()
    
    
    var letterRow1 = ["Q", "W", "E", "R", "T", "Y", "U", "I", "O", "P"]
    var letterRow2 = ["A", "S", "D", "F", "G", "H", "J", "K", "L"]
    var letterRow3 = ["Z", "X", "C", "V", "B", "N", "M"]
    var body: some View {

            VStack {
                Text("WORDLE")
                    .padding()
                    .font(.largeTitle)
                ForEach(0..<6) {
                    i in
                    GuessRow(guessRow: i)
                }
                keyboardView
            }
            .padding(5)
            .frame(minWidth: 0, maxWidth: .infinity)
            .alert(isPresented: $showErrorAlert) {
                Alert(title: Text("Error"), message: Text(errorMessage), dismissButton: .cancel())
            }
            .environmentObject(vm)
        
    }
    

}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .environmentObject(dev.homeVM)
    }
}

extension ContentView
{
    private var keyboardView: some View {
        VStack {
            HStack(alignment: .center, spacing: 5) {
                ForEach(letterRow1, id: \.self) {
                    letter in
                    
                    Button (action: {
                        vm.addLetter(letter: letter)
                    }, label: {
                        LetterButton(symbol: letter, theColor: $color)
                            .frame(minWidth: 0, maxWidth: (UIScreen.main.bounds.width - 65)/10)
                    })
                }
                
            }
            HStack(alignment: .center, spacing: 5) {
                ForEach(letterRow2, id: \.self) {
                    letter in
                    Button (action: {
                        vm.addLetter(letter: letter)
//
                    }, label: {
                        LetterButton(symbol: letter, theColor: $color)
                            .frame(minWidth: 0, maxWidth: (UIScreen.main.bounds.width - 65)/10)
                    })
                }
                
            }
            HStack(alignment: .center, spacing: 5) {
                Button(action: {
                    guessWord()
                }) {
                    LetterButton(symbol: "ENTER", theColor: .constant(Color.gray))

                }
                .frame(minWidth: 0, maxWidth: .infinity)
                
                ForEach(letterRow3, id: \.self) {
                    letter in
                    Button (action: {
                        vm.addLetter(letter: letter)
                    }, label: {
                        LetterButton(symbol: letter, theColor: $color)
                            .frame(minWidth: 0, maxWidth: (UIScreen.main.bounds.width - 65)/10)
                    })
                        
                }
                Button(action: {
                    vm.removeLetter()
                }) {
                    LetterButton(symbol: "DELETE", theColor: .constant(Color.gray))
                }
                .frame(minWidth: 0, maxWidth: .infinity)
            }
            .frame(minWidth: 0, maxWidth: .infinity)
        }
        
    }
    
    
    func guessWord()
    {
        let word = vm.guessList[vm.guessPosition.guessRow].word
        print("guessing word \(word)")
        if word.count < 5 {
            errorMessage = "Word must contain 5 exactly letters"
            showErrorAlert = true
        }
        else if !WordList.allPossibleWords.contains(word.lowercased()) {
            errorMessage = "Not a valid word"
            showErrorAlert = true
        }
        else {
            // highlight the colors of the word in the keyboard and guess
            // loop through letters in word one character at a time
            // Highlight Green First
            for i in 0..<word.count {
                let guessletter = word[i]
                if word[i] == vm.answer[i]
                {
                    vm.letterColors.colorDictionary[guessletter] = Color.theme.green
                }
            }
            
            // Highlight yellow
            for i in 0..<word.count {
                let guessletter = word[i]
                if word[i] != vm.answer[i] && vm.answer.contains(guessletter) && vm.letterColors.colorDictionary[guessletter[i]] != Color.theme.green
        
                {
                    vm.letterColors.colorDictionary[guessletter] = Color.theme.yellow
                }
            }
            
            // Highlight darkGray
            for i in 0..<word.count {
                let guessletter = word[i]
                if !vm.answer.contains(guessletter)
                {
                    vm.letterColors.colorDictionary[guessletter] = Color.theme.darkGray
                }
            }
            
            // your have made a guess and keyboard is the correct colors, now change the guessLabels to the correct colors.
            
            // set ColorArray for guess based off the current colors of the color dictionary.
            for i in 0..<word.count {
                vm.guessList[vm.guessPosition.guessRow].colorArray[i] = vm.letterColors.colorDictionary[word[i]] ?? Color.theme.gray
            }
            
            vm.guessList[vm.guessPosition.guessRow].isComplete = true
//            guessesComplete[guessPosition.guessRow] = true
            vm.guessPosition.add1Word()
            
        }
    }
}
