//
//  main.swift
//  Day14(Scope)
//
//  Created by Atif on 24/03/2019.
//  Copyright © 2019 atif.gcucs@gmail.com. All rights reserved.
//

import Foundation

class Difference {
    private var elements = [Int]()
    var maximumDifference: Int
    // Write your code here
    
    init(a:[Int]) {
        self.elements = a
        self.maximumDifference = 0
    }
    
    func computeDifference() {
        for i in 0..<self.elements.count {
            for x in 0..<self.elements.count {
                //print(abs(self.elements[i]-self.elements[x]), terminator:" ")
                let dif = abs(self.elements[i]-self.elements[x])
                if dif > self.maximumDifference {
                    self.maximumDifference = dif
                }
            }
        }
    }
    
} // End of Difference class

let n = Int(readLine()!)!
let a = readLine()!.components(separatedBy: " ").map{ Int($0)! }

//let a = [1, 2, 5]
let d = Difference(a: a)

d.computeDifference()

print(d.maximumDifference)
