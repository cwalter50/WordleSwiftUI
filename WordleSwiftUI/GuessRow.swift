//
//  GuessRow.swift
//  WordleSwiftUI
//
//  Created by Christopher Walter on 4/6/22.
//

import SwiftUI

struct GuessRow: View {
    
    @State var guess: String = "BOATS"
    @EnvironmentObject var letterColors: LetterColors
    var body: some View {
        HStack(alignment: .center, spacing: 10) {
            GuessLabel(letter: guess[0])
            GuessLabel(letter: guess[1])
            GuessLabel(letter: guess[2])
            GuessLabel(letter: guess[3])
            GuessLabel(letter: guess[4])
        }
        .frame(minWidth: 0, maxWidth: .infinity)
    }
}

struct GuessRow_Previews: PreviewProvider {
    static var previews: some View {
        GuessRow()
    }
}
