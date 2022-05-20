//
//  GuessLabel.swift
//  WordleSwiftUI
//
//  Created by Christopher Walter on 4/6/22.
//

import SwiftUI

struct GuessLabel: View {
    
    @State var guessPosition: GuessPosition = GuessPosition()
    var isFrontOfCard: Bool

    @EnvironmentObject var vm: HomeViewModel
    
    var body: some View {
        
        ZStack {
            RoundedRectangle(cornerRadius: 10)
//                .fill(isFrontOfCard ? Color.clear:
//                    vm.letterColors.colorDictionary[vm.guessList[guessPosition.guessRow].word[guessPosition.guessColumn]] ?? Color.clear)
                .fill(isFrontOfCard ? Color.clear:
                        vm.guessList[guessPosition.guessRow].colorArray[guessPosition.guessColumn])
                .aspectRatio(1, contentMode: .fit)
            RoundedRectangle(cornerRadius: 10)
                .strokeBorder(Color.theme.gray, lineWidth: 3)
                .aspectRatio(1, contentMode: .fit)
//            Text(letter.uppercased())
            Text(vm.guessList[guessPosition.guessRow].word[guessPosition.guessColumn])
                .font(.largeTitle)
                .multilineTextAlignment(.center)
                .foregroundColor(isFrontOfCard ? Color.black : Color.white)
        }
        
    }
}

struct GuessLabel_Previews: PreviewProvider {
    static var previews: some View {
        GuessLabel(isFrontOfCard: true)
            .environmentObject(dev.homeVM)
    }
}
