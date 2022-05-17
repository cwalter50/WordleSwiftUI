//
//  Guess.swift
//  WordleSwiftUI
//
//  Created by Christopher Walter on 5/17/22.
//

import Foundation
import SwiftUI

class Guess: ObservableObject, Identifiable {
    @Published var word: String
    @Published var isComplete: Bool
    @Published var id = UUID().uuidString
    
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
