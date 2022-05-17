//
//  GuessRow.swift
//  WordleSwiftUI
//
//  Created by Christopher Walter on 4/6/22.
//

import SwiftUI

struct GuessRow: View {
    
    @State var guess: String = "BOATS"
//    @Binding var guess: Guess
    @EnvironmentObject var letterColors: LetterColors
    
    @State var backDegree: Double = 0
    @State var frontDegree: Double = -90
    @State var durationAndDelay: Double = 0.3
    @State var isGuessComplete: Bool = false
    
    var body: some View {
        VStack {
            HStack(alignment: .center, spacing: 10) {
                GuessLetterView(backDegree: $backDegree, frontDegree: $frontDegree, letter: guess[0])
                GuessLetterView(backDegree: $backDegree, frontDegree: $frontDegree, letter: guess[1])
                GuessLetterView(backDegree: $backDegree, frontDegree: $frontDegree, letter: guess[2])
                GuessLetterView(backDegree: $backDegree, frontDegree: $frontDegree, letter: guess[3])
                GuessLetterView(backDegree: $backDegree, frontDegree: $frontDegree, letter: guess[4])
            }
            .frame(minWidth: 0, maxWidth: .infinity)
            
//            Button(action: {
//                flipCard()
//            }, label: {
//                Text("Button")
//            })
        }
        
    }
    
    func flipCard () {
        isGuessComplete = !isGuessComplete
        if isGuessComplete {
            withAnimation(.linear(duration: durationAndDelay)) {
                backDegree = 90
            }
            withAnimation(.linear(duration: durationAndDelay).delay(durationAndDelay)){
                frontDegree = 0
            }
        } else {
            withAnimation(.linear(duration: durationAndDelay)) {
                frontDegree = -90
            }
            withAnimation(.linear(duration: durationAndDelay).delay(durationAndDelay)){
                backDegree = 0
            }
        }
    }
}

struct GuessRow_Previews: PreviewProvider {
    static var previews: some View {
//        GuessRow(guess: .constant(Guess(word: "BOATS", isComplete: false)))
        GuessRow()
            .environmentObject(dev.letterColors)
    }
}
