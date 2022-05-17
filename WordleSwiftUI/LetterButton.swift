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
//    @Binding var colorDictionary : [String: Color]
    
    @EnvironmentObject var letterColors: LetterColors
    

    
    var body: some View {

        ZStack {
            RoundedRectangle(cornerRadius: 5, style: .circular)
                .stroke(Color.gray, lineWidth: 3)
//                .aspectRatio(0.67, contentMode: .fit)
                .border(Color.secondary, width: 2)
                .background(letterColors.colorDictionary[symbol] ?? Color.theme.gray)
            Text(symbol)
                .foregroundColor(.white)

                .font(.body)
                .fontWeight(.bold)
                .minimumScaleFactor(0.5)
                .scaledToFit()
            
        }
        
            
        
        
    }
}

struct LetterButton_Previews: PreviewProvider {
    static var previews: some View {

        LetterButton(theColor: .constant(Color.theme.green))
            .environmentObject(dev.letterColors)
    }
}
