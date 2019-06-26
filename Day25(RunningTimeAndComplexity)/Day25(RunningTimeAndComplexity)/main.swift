//
//  main.swift
//  Day25(RunningTimeAndComplexity)
//
//  Created by Atif on 16/05/2019.
//  Copyright © 2019 Atif. All rights reserved.
//

import Foundation

func insert(data: Int) -> Int {
    return insert(data: data)
}

func display(data: Int) -> Int {
    return display(data: data)
}

func readValue(data: Int) -> Int {
    return readValue(data: data)
}


let t = Int(readLine()!)!
var v: Int?

for _ in 0..<t {
    v = insert(data: Int(readLine()!)!)
}

_ = display(data: readValue(data: v!))

