//
//  Guess.swift
//  WordleSwiftUI
//
//  Created by Christopher Walter on 5/17/22.
//

import Foundation
import SwiftUI

struct Guess: Identifiable {
    var word: String
    var isComplete: Bool
    var id = UUID().uuidString

    init(word: String, isComplete: Bool)
    {
        self.isComplete = isComplete
        self.word = word
    }

    init() {
        self.word = ""
        self.isComplete = false
    }



}

class GuessList: ObservableObject {
    @Published var list: [Guess]
    
    init()
    {
        list = [Guess(), Guess(), Guess(), Guess(), Guess(), Guess()]
    }
}


