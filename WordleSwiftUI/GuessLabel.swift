//
//  GuessLabel.swift
//  WordleSwiftUI
//
//  Created by Christopher Walter on 4/6/22.
//

import SwiftUI

struct GuessLabel: View {
    
//    @State var letter: String = "A"
//    @Binding var letter: String
    @State var guessPosition: GuessPosition = GuessPosition()
    var isFrontOfCard: Bool
//    @State var color: Color
//    @Binding var color: Color
    
//    @Binding var theColor: Color
    
    @EnvironmentObject var vm: HomeViewModel
    
    var body: some View {
        
        ZStack {
            RoundedRectangle(cornerRadius: 10)
                .fill(isFrontOfCard ? Color.clear:
                    vm.letterColors.colorDictionary[vm.guessList[guessPosition.guessRow].word[guessPosition.guessColumn]] ?? Color.clear)
                .aspectRatio(1, contentMode: .fit)
            RoundedRectangle(cornerRadius: 10)
                .strokeBorder(Color.theme.gray, lineWidth: 3)
                .aspectRatio(1, contentMode: .fit)
//            Text(letter.uppercased())
            Text(vm.guessList[guessPosition.guessRow].word[guessPosition.guessColumn])
                .font(.largeTitle)
                .multilineTextAlignment(.center)
        }
        
    }
}

struct GuessLabel_Previews: PreviewProvider {
    static var previews: some View {
//        GuessLabel(color: Color.clear)
//        GuessLabel(color: Color.clear)
//        GuessLabel(color: .constant(Color.clear))
        GuessLabel(isFrontOfCard: true)
            .environmentObject(dev.homeVM)
    }
}
