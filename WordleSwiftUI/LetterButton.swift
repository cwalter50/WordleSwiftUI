//
//  LetterButton.swift
//  WordleSwiftUI
//
//  Created by Christopher Walter on 4/6/22.
//

import SwiftUI


struct LetterButton: View {
    @State var symbol: String = "A"

    @Binding var theColor: Color
    
    var body: some View {

        ZStack {
            RoundedRectangle(cornerRadius: 5, style: .circular)
                .stroke(Color.gray, lineWidth: 3)
//                .aspectRatio(0.67, contentMode: .fit)
                .border(Color.secondary, width: 2)
                .background(theColor)
            Text(symbol)
                .foregroundColor(.white)

                .font(.body)
                .minimumScaleFactor(0.5)
                .scaledToFit()
            
        }
        
            
        
        
    }
}

struct LetterButton_Previews: PreviewProvider {
    static var previews: some View {
//        LetterButton(theColor: .constant(Color.green))
        LetterButton(theColor: .constant(Color.yellow))
//        LetterButton(backgroundColor: .constant(Color.green))
//            .previewLayout(.sizeThatFits)
    }
}
