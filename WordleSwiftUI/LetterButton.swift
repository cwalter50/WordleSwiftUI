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
    @Binding var colorDictionary : [String: Color]
    

    
    var body: some View {

        ZStack {
            RoundedRectangle(cornerRadius: 5, style: .circular)
                .stroke(Color.gray, lineWidth: 3)
//                .aspectRatio(0.67, contentMode: .fit)
                .border(Color.secondary, width: 2)
                .background(colorDictionary[symbol] ?? Color.gray)
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
        let theColorDictionary: [String: Color] = ["A": Color.gray, "B": Color.gray, "C": Color.gray, "D": Color.gray,"E": Color.gray, "F": Color.gray,"G": Color.gray, "H": Color.gray,"I": Color.gray, "J": Color.gray,"K": Color.gray, "L": Color.gray,"M": Color.gray, "N": Color.gray,"O": Color.gray, "P": Color.gray,"Q": Color.gray, "R": Color.gray, "S": Color.gray, "T": Color.gray,"U": Color.gray, "V": Color.gray,"W": Color.gray, "X": Color.gray,"Y": Color.gray, "Z": Color.gray]
//        LetterButton(theColor: .constant(Color.green))
        LetterButton(theColor: .constant(Color.green), colorDictionary: .constant(theColorDictionary))
//        LetterButton(backgroundColor: .constant(Color.green))
//            .previewLayout(.sizeThatFits)
    }
}
