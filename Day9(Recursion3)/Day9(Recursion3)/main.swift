//
//  main.swift
//  Day9(Recursion3)
//
//  Created by Atif on 14/03/2019.
//  Copyright © 2019 atif.gcucs@gmail.com. All rights reserved.
//

import Foundation

// Complete the factorial function below.
func factorial(n: Int) -> Int {
    if (n < 1) {
        return 1
    }
    return n*(factorial(n:(n-1)))
}

//let stdout = ProcessInfo.processInfo.environment["OUTPUT_PATH"]!
//FileManager.default.createFile(atPath: stdout, contents: nil, attributes: nil)
//let fileHandle = FileHandle(forWritingAtPath: stdout)!

guard let n = Int((readLine()?.trimmingCharacters(in: .whitespacesAndNewlines))!)
    else { fatalError("Bad input") }

let result = factorial(n: n)
print(result)

//fileHandle.write(String(result).data(using: .utf8)!)
//fileHandle.write("\n".data(using: .utf8)!)
