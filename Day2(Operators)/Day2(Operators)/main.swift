//
//  main.swift
//  Day3(Operators)
//
//  Created by Atif on 10/03/2019.
//  Copyright © 2019 atif.gcucs@gmail.com. All rights reserved.
//

import Foundation


class Operators {
    // Complete the solve function below.
    func solve(meal_cost: Double, tip_percent: Int, tax_percent: Int) -> Void {
        let tip_cost = meal_cost * Double(tip_percent)/100
        let tax_cost = meal_cost * Double(tax_percent)/100
        let total_cost = round(meal_cost + tip_cost + tax_cost)
        print(String(format:"%.f", total_cost))
    }
}

let op = Operators()
op.solve(meal_cost: 12.0, tip_percent: 20, tax_percent: 8)
