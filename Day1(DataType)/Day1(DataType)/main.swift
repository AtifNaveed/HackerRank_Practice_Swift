//
//  main.swift
//  Day2(DataType)
//
//  Created by Atif on 10/03/2019.
//  Copyright © 2019 atif.gcucs@gmail.com. All rights reserved.
//

import Foundation

var i = 4
var d = 4.0
var s = "HackerRank "
// Declare second integer, double, and String variables.
var sumInt = 0
var sumDouble = 0.0
var concatenateString = ""
// Read and save an integer, double, and String to your variables.
sumInt = Int(readLine()!)!+i
sumDouble = Double(readLine()!)!+d
concatenateString = s + readLine()!
// Print the sum of both integer variables on a new line.
print(sumInt)

// Print the sum of the double variables on a new line.
print(sumDouble)

// Concatenate and print the String variables on a new line
// The 's' variable above should be printed first.
print(concatenateString)
