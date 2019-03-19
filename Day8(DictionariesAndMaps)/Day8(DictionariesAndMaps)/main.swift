//
//  main.swift
//  Day8(DictionariesAndMaps)
//
//  Created by Atif on 13/03/2019.
//  Copyright © 2019 atif.gcucs@gmail.com. All rights reserved.
//

import Foundation
// Enter your code here. Read input from STDIN. Print output to STDOUT

guard let n = Int((readLine()?.trimmingCharacters(in: .whitespacesAndNewlines))!)
    else {fatalError("Bad Input")}

var dictionary = NSMutableDictionary()
var queryArray = NSMutableArray()

for _ in 0..<n {
    guard let input = readLine() else {
        fatalError("Bad Input")
    }
    let splitInput = input.split(separator: " ")
    if splitInput.count == 2 {
        guard let number = Int(splitInput[1])
            else {fatalError("Bad Input")}
        
        if splitInput[0].count != 0 && splitInput[1].count <= 8 {
            dictionary.setValue(number, forKey: String(splitInput[0]))
        }else {
            fatalError("Bad Input")
        }
    }
    
}

// for _ in 0..<n {
//     guard let input = readLine() else {
//         fatalError("Bad Input")
//     }
while let input = readLine() {
    let keyValue: String? = input
    guard let query = keyValue, !query.isEmpty else {
        fatalError("Bad Input")
    }
    queryArray.add(query)
}

for i in 0..<queryArray.count {
    if let found = dictionary.value(forKey: queryArray[i] as! String) {
        print("\(queryArray[i])=\(found)")
    } else {
        print("Not found")
    }
}
