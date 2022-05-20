//
//  GuessLetterView.swift
//  WordleSwiftUI
//
//  Created by Christopher Walter on 5/17/22.
//

import SwiftUI

struct GuessLetterView: View {
    @Binding var backDegree: Double
    @Binding var frontDegree: Double
    @State var guessPosition: GuessPosition
    
    
    
    @EnvironmentObject var vm: HomeViewModel
    var body: some View {
        ZStack {
            GuessLabel(guessPosition: guessPosition, color: Color.clear)
                    .rotation3DEffect(Angle(degrees: backDegree), axis: (x: 1, y: 0, z: 0))
            GuessLabel(guessPosition: guessPosition, color: vm.letterColors.colorDictionary[vm.guessList[guessPosition.guessRow].word[guessPosition.guessColumn]] ?? Color.theme.gray)
                    .rotation3DEffect(Angle(degrees: frontDegree), axis: (x: 1, y: 0, z: 0))
            
            
        }
    }
}

struct GuessLetterView_Previews: PreviewProvider {
    static var previews: some View {
        GuessLetterView(backDegree: .constant(0), frontDegree: .constant(-90), guessPosition: GuessPosition())
            .environmentObject(dev.homeVM)

    }
}
