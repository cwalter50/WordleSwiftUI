//
//  GuessLabel.swift
//  WordleSwiftUI
//
//  Created by Christopher Walter on 4/6/22.
//

import SwiftUI

struct GuessLabel: View {
    
    @State var letter: String = "A"
    var body: some View {
        
        ZStack {
            RoundedRectangle(cornerRadius: 5, style: .circular)
                .stroke(Color.gray, lineWidth: 3)
                .aspectRatio(1, contentMode: .fit)
                .border(Color.secondary, width: 2)
                .background(Color.white)
            Text(letter.uppercased())
                .font(.largeTitle)
                .multilineTextAlignment(.center)
        }

        
    }
}

struct GuessLabel_Previews: PreviewProvider {
    static var previews: some View {
        GuessLabel()
    }
}
