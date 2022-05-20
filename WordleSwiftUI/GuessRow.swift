//
//  GuessRow.swift
//  WordleSwiftUI
//
//  Created by Christopher Walter on 4/6/22.
//

import SwiftUI

struct GuessRow: View {
    
    
    @State var guessRow: Int
    @EnvironmentObject var vm: HomeViewModel
    
    @State var backDegree: Double = 0
    @State var frontDegree: Double = -90
    @State var durationAndDelay: Double = 0.3
    
    var body: some View {
        VStack {
//            Button(action: {
//                flipCard()
//            }, label: {
//                Text("Button")
//            })
            HStack(alignment: .center, spacing: 10) {
//                ForEach (0..<5) { i in
//                    GuessLabel(guessPosition: GuessPosition(row: guessRow, column: i), color: Color.clear)
//                }
                   
                ForEach(0..<5) {
                    i in
                        GuessLetterView(backDegree: $backDegree, frontDegree: $frontDegree, guessPosition: GuessPosition(row: guessRow, column: i))
                }
                
            }
            .frame(minWidth: 0, maxWidth: .infinity)
            

        }
        
    }
    
    func flipCard () {
        vm.guessList[guessRow].isComplete = !vm.guessList[guessRow].isComplete
        
        if vm.guessList[guessRow].isComplete {
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

        GuessRow(guessRow: 0)
            .environmentObject(dev.homeVM)

    }
}
