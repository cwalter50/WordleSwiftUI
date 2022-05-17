//
//  GuessLabel.swift
//  WordleSwiftUI
//
//  Created by Christopher Walter on 4/6/22.
//

import SwiftUI

struct GuessLabel: View {
    
    @State var letter: String = "A"
    @State var color: Color
    
//    @Binding var theColor: Color
    
    @EnvironmentObject var letterColors: LetterColors
    
    var body: some View {
        
        ZStack {

            
            RoundedRectangle(cornerRadius: 10)
                .fill(color)
                .aspectRatio(1, contentMode: .fit)
            RoundedRectangle(cornerRadius: 10)
                .strokeBorder(Color.theme.gray, lineWidth: 3)
                .aspectRatio(1, contentMode: .fit)
            Text(letter.uppercased())
                .font(.largeTitle)
                .multilineTextAlignment(.center)
        }
        
    }
}

struct GuessLabel_Previews: PreviewProvider {
    static var previews: some View {
        GuessLabel(color: Color.clear)
            .environmentObject(dev.letterColors)
    }
}
