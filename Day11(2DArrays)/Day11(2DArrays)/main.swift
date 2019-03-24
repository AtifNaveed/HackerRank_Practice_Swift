//
//  main.swift
//  Day11(2DArrays)
//
//  Created by Atif on 19/03/2019.
//  Copyright © 2019 atif.gcucs@gmail.com. All rights reserved.
//

import Foundation

//guard arr.count == 6 else { fatalError("Bad input") }
//
//print(arr)

//let arr: [[Int]] = [[11, 12, 13, 14, 15, 16],
//                    [21, 22, 23, 24, 25, 26],
//                    [31, 32, 33, 34, 35, 36],
//                    [41, 42, 43, 44, 45, 46],
//                    [51, 52, 53, 54, 55, 56],
//                    [61, 62, 63, 54, 55, 56]]


//let arr: [[Int]] = [[1, 1, 1, 0, 0, 0],
//                   [0, 1, 0, 0, 0, 0],
//                   [1, 1, 1, 0, 0, 0],
//                   [0, 0, 2, 4, 4, 0],
//                   [0, 0, 0, 2, 0, 0],
//                   [0, 0, 1, 2, 4, 0]]


let arr: [[Int]] = [[-1, -1, 0, -9, -2, -2],
                    [-2, -1, -6, -8, -2, -5],
                    [-1, -1, -1, -2, -3, -4],
                    [-1, -9, -2, -4, -4, -5],
                    [-7, -3, -3, -2, -9, -9],
                    [-1, -3, -1, -2, -4, -5]]


//x, x+1, x+2     row 1
//    x+1         row 2
//x+1, x+1, x+2   row 3

//1 1 1   1 1 0   1 0 0   0 0 0
//  1       0       0       0
//1 1 1   1 1 0   1 0 0   0 0 0


var hourglass_sum = -10000

for i in 0..<arr.count-2 {
    for j in 0..<arr.count-2 {
        //print("\(i)=\(j)", terminator:" ")
        print((arr[i][j],arr[i][j+1],arr[i][j+2]), "\n", (arr[i+1][j+1]), "\n", (arr[i+2][j],arr[i+2][j+1],arr[i+2][j+2]))
        let sum =
            (arr[i][j]+arr[i][j+1]+arr[i][j+2]) +
            (arr[i+1][j+1]) +
            (arr[i+2][j]+arr[i+2][j+1]+arr[i+2][j+2])
        
        if hourglass_sum < sum {
            hourglass_sum = sum
        }

//        print(hourglass_sum)

    }
//    print("\n")
}

print(hourglass_sum)
