//
//  TextView.swift
//  WordleSwiftUI
//
//  Created by Christopher Walter on 5/17/22.
//

import SwiftUI

struct TextView: View {
    @State var name = "Steve"
    var body: some View {
        VStack {
            Text("Hello, \(name)")
                .font(.largeTitle)
                .onTapGesture {
                    name = "Peterson"
                }
                .padding()
                .foregroundColor(name == "Steve" ? Color.blue : Color.red)
            Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
            Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
        }
        
    }
}

struct TextView_Previews: PreviewProvider {
    static var previews: some View {
        TextView()
    }
}
