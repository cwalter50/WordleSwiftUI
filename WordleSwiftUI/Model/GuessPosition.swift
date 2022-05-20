//
//  GuessPosition.swift
//  WordleSwiftUI
//
//  Created by Christopher Walter on 4/6/22.
//

import Foundation


class GuessPosition {
    var guessRow: Int = 0 // keeps track of the row or which guess we are on
    var guessColumn: Int = 0 // keeps track of the column or position in the guess
    
    init ()
    {
        guessRow = 0
        guessColumn = 0
    }
    
    init(row: Int, column: Int)
    {
        guessRow = row
        guessColumn = column
    }
    
    func add1Letter()
    {
        guessColumn += 1
        if guessColumn > 4
        {
            guessColumn = 0
        }
    }
    func add1Word()
    {
        guessRow += 1
        if guessRow > 4
        {
            guessRow = 0
        }
    }
    func remove1Letter()
    {
        guessColumn -= 1
        if guessColumn <= 0
        {
            guessColumn = 0
        }
    }
    

}
