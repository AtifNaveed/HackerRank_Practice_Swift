//
//  main.swift
//  Day5(Loops)
//
//  Created by Atif on 11/03/2019.
//  Copyright © 2019 atif.gcucs@gmail.com. All rights reserved.
//

import Foundation

guard let n = Int((readLine()?.trimmingCharacters(in: .whitespacesAndNewlines))!)
    else { fatalError("Bad input") }

for i in 1...10 {
    print ("\(n) x \(i) =", i*n)
}
