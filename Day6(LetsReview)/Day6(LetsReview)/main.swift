//
//  main.swift
//  Day6(LetsReview)
//
//  Created by Atif on 11/03/2019.
//  Copyright © 2019 atif.gcucs@gmail.com. All rights reserved.
//

import Foundation
import Darwin

let numStrings = Int(readLine()!)!

func printEvenAndOdd(string: String) {
    let evenCharacters: NSMutableString = ""
    let oddCharacters: NSMutableString = ""
    for (i, char) in string.enumerated() {
        if (i)%2 == 0 {
            evenCharacters.append(String(char))
        }else {
            oddCharacters.append(String(char))
        }
    }
    print("\(evenCharacters) \(oddCharacters)")
}


for _ in 1...numStrings {
    let inputString = readLine()!
    printEvenAndOdd(string: inputString)
}

