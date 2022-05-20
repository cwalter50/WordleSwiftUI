//
//  HomeViewModel.swift
//  WordleSwiftUI
//
//  Created by Christopher Walter on 5/20/22.
//

import Foundation
import SwiftUI

class HomeViewModel: ObservableObject
{
    @Published var guessList: [Guess]
    @Published var guessPosition: GuessPosition
    
    @Published var answer: String = "BREAD"
    
    @Published var letterColors: LetterColors
    
    @Published var errorMessage: String = ""
    @Published var showErrorAlert: Bool = false
    
    init()
    {
        guessList = [Guess(), Guess(), Guess(), Guess(), Guess(), Guess()]
        guessPosition = GuessPosition()
        letterColors = LetterColors()
        getRandomAnswer()
    }
    
    func getRandomAnswer()
    {
        if let word = WordList.wordleWords.randomElement() {
            answer = word.uppercased()
//            answer = "BREAD"
            
        }
    }
    
    func addLetter(letter: String)
    {
        if guessList[guessPosition.guessRow].word.count < 5
        {
            guessList[guessPosition.guessRow].word += letter
            guessPosition.add1Letter()
        }
    }
    
    
    func removeLetter()
    {
        if guessList[guessPosition.guessRow].word.count > 0 {
            guessList[guessPosition.guessRow].word.removeLast()
            guessPosition.remove1Letter()
        }

    }
    
}
