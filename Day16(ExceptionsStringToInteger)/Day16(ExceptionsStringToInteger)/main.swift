//
//  main.swift
//  Day16(Exceptions-StringToInteger)
//
//  Created by Atif on 27/03/2019.
//  Copyright © 2019 Atif. All rights reserved.
//

import Foundation

/*
 * Define an ErrorType
 */
enum StringToIntTypecastingError: Error {
    case BadString
}

/*
 * If typecasting is not possible, throw exception, otherwise return the Integer value
 */
func stringToInt(inputString: String) throws -> Int {
    // Write your code here
    guard let value = Int(inputString) else {throw StringToIntTypecastingError.BadString}
    return value
}

/*
 * Read the input
 */
let inputString = readLine()!

do {
    try print(stringToInt(inputString: inputString))
} catch StringToIntTypecastingError.BadString {
    print("Bad String")
}
