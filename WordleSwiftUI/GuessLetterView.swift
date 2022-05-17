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
    @State var letter: String = "A"
    
    @EnvironmentObject var letterColors: LetterColors
    var body: some View {
        ZStack {
            GuessLabel(letter: letter, color: Color.clear)
                .rotation3DEffect(Angle(degrees: backDegree), axis: (x: 1, y: 0, z: 0))
            GuessLabel(letter: letter, color: letterColors.colorDictionary[letter] ?? Color.theme.gray)
                .rotation3DEffect(Angle(degrees: frontDegree), axis: (x: 1, y: 0, z: 0))
        }
    }
}

struct GuessLetterView_Previews: PreviewProvider {
    static var previews: some View {
        GuessLetterView(backDegree: .constant(0), frontDegree: .constant(-90), letter: "A")
            .environmentObject(dev.letterColors)
    }
}
