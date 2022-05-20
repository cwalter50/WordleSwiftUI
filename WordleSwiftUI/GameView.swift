//
//  GameView.swift
//  WordleSwiftUI
//
//  Created by Christopher Walter on 5/20/22.
//

import SwiftUI

struct GameView: View {
    
    @StateObject var vm = HomeViewModel() // this contains the guesses, guessPosition, letterColorDictionary, and answer
    
    var body: some View {
        VStack {
            ForEach(self.vm.guessList.indices) { idx in
                HStack(alignment: .center, spacing: 10) {
                    GuessRow(guessRow: idx)
//                    ForEach(0..<5) {
//                        i in
//                        GuessLabel(guessPosition: GuessPosition(row: idx, column: i), color: Color.clear)
//
//                    }
                    
                }
            }

        }
        .environmentObject(vm)
//        .environmentObject(vm.letterColors)
    }
}

struct GameView_Previews: PreviewProvider {
    static var previews: some View {
        GameView()
            .environmentObject(dev.homeVM)
//            .environmentObject(dev.letterColors)
    }
}


