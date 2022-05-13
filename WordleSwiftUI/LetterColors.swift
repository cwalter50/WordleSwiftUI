//
//  LetterColors.swift
//  WordleSwiftUI
//
//  Created by Christopher Walter on 5/13/22.
//

import Foundation
import SwiftUI


class LetterColors: ObservableObject
{
    @Published var colorDictionary : [String: Color] = ["A": Color.gray, "B": Color.gray, "C": Color.gray, "D": Color.gray,"E": Color.gray, "F": Color.gray,"G": Color.gray, "H": Color.gray,"I": Color.gray, "J": Color.gray,"K": Color.gray, "L": Color.gray,"M": Color.gray, "N": Color.gray,"O": Color.gray, "P": Color.gray,"Q": Color.gray, "R": Color.gray, "S": Color.gray, "T": Color.gray,"U": Color.gray, "V": Color.gray,"W": Color.gray, "X": Color.gray,"Y": Color.gray, "Z": Color.gray]
}
