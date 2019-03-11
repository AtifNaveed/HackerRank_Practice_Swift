//
//  main.swift
//  Day3(IntroToConditionalStatements)
//
//  Created by Atif on 10/03/2019.
//  Copyright © 2019 atif.gcucs@gmail.com. All rights reserved.
//

import Foundation

guard let n = Int((readLine()?.trimmingCharacters(in: .whitespacesAndNewlines))!)
    else { fatalError("Bad input") }

if n%2 == 0 {
    if n>=2 && n<=5 {
        print ("Not Weird")
    }else if n>=6 && n<=20 {
        print ("Weird")
    }else if n>20 {
        print ("Not Weird")
    }
}else {
    print ("Weird")
}

