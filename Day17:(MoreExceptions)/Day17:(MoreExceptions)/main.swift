//
//  main.swift
//  Day17:(MoreExceptions)
//
//  Created by Atif on 27/03/2019.
//  Copyright © 2019 Atif. All rights reserved.
//

import Foundation

// Defining enum for throwing error
// throw RangeError.NotInRange... is used to throw the error
enum RangeError : Error {
    case NotInRange(String)
}

// Start of class Calculator
class Calculator {
    // Start of function power
    func power(n: Int, p: Int) throws -> Int {
        // Add your code here
        if p<0 || n<0 {throw RangeError.NotInRange("n and p should be non-negative")}
        
        var value = 1
        var power = p
        while (power != 0) {
            value *= n;
            power -= 1;
        }
        return value
        
    } // End of function power
} // End of class Calculator

let myCalculator = Calculator()
let t = Int(readLine()!)!

for _ in 0..<t {
    let np = readLine()!.components(separatedBy: " ").map{ Int($0)! }
    let n = np[0]
    let p = np[1]
    
    do {
        let ans = try myCalculator.power(n: n, p: p)
        print(ans)
    } catch RangeError.NotInRange(let errorMsg) {
        print(errorMsg)
    }
}

//let ans = try myCalculator.power(n: 3, p: 5)
//print(ans)
