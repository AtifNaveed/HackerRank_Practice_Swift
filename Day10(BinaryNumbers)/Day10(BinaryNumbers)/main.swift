//
//  main.swift
//  Day10(BinaryNumbers)
//
//  Created by Atif on 18/03/2019.
//  Copyright © 2019 atif.gcucs@gmail.com. All rights reserved.
//

import Foundation

guard let n = Int((readLine()?.trimmingCharacters(in: .whitespacesAndNewlines))!)
    else { fatalError("Bad input") }

//var n = 0
////n = 5
////n = 6
////n = 439
//n = 524275

var newCount = 0
var lastCount = 0
var lChar:Character? = nil
let inputToBinary = String(n, radix: 2)
//print(inputToBinary)

for char in inputToBinary {
    if lChar == nil {
        lChar = char
    }
    if char == "1" {
        if(lChar == char) {
            newCount += 1
        }else if lChar != char {
            lastCount = newCount
            newCount = 1
        }
    }
    lChar = char
}

if (lastCount > newCount){
    print(lastCount)
}else {
    print(newCount)
}

