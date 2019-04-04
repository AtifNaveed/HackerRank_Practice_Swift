//
//  main.swift
//  Day20(Sorting)
//
//  Created by Atif on 28/03/2019.
//  Copyright © 2019 Atif. All rights reserved.
//

import Foundation

//// read the integer n
let n = Int(readLine()!)!
//
//// read the array
let arr = readLine()!.components(separatedBy: " ").map{ Int($0)! }


//let n = 3
//let arr = [1, 2, 3]

var numSwaps = 0
var sortArray = arr

for _ in 0..<n {
    for j in 0..<n-1 {
        if sortArray[j] > sortArray[j+1] {
            sortArray.swapAt(j, j+1)
            numSwaps += 1
        }
    }
}

print("Array is sorted in \(numSwaps) swaps.")
print("First Element: \(sortArray[0])")
print("Last Element: \(sortArray[arr.count-1])")

