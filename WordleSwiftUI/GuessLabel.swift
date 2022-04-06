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
        Text(letter.uppercased())
            .font(.largeTitle)
            .padding(10)
            .border(Color.secondary, width: 2)
            .cornerRadius(5)
        
    }
}

struct GuessLabel_Previews: PreviewProvider {
    static var previews: some View {
        GuessLabel()
    }
}
