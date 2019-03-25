//
//  main.swift
//  Day12(Inheritance)
//
//  Created by Atif on 20/03/2019.
//  Copyright © 2019 atif.gcucs@gmail.com. All rights reserved.
//

import Foundation

// Class Person
class Person {
    private let firstName: String
    private let lastName: String
    private let id: Int
    
    // Initializer
    init(firstName: String, lastName: String, id: Int) {
        self.firstName = firstName
        self.lastName = lastName
        self.id = id
    }
    
    // Print person data
    func printPerson() {
        print("Name: \(lastName), \(firstName)")
        print("ID: \(id)")
    }
} // End of class Person

// Class Student
class Student: Person {
    var testScores: [Int]
    
    /*
     *   Initializer
     *
     *   Parameters:
     *   firstName - A string denoting the Person's first name.
     *   lastName - A string denoting the Person's last name.
     *   id - An integer denoting the Person's ID number.
     *   scores - An array of integers denoting the Person's test scores.
     */
    // Write your initializer here
    
    init(firstName: String, lastName: String, id: Int, scores:[Int]) {
        self.testScores = scores
        super.init(firstName: firstName, lastName: lastName, id: id)
    }
    
    /*
     *   Method Name: calculate
     *   Return: A character denoting the grade.
     */
    // Write your method here
    func calculate() -> Character {
        var average = 0
        var score = 0
        for i in 0..<testScores.count {
            score += self.testScores[i]
        }
        average = score/testScores.count
        
        if average >= 90 && average <= 100 {
            return "O"
        }
        if average >= 80 && average < 90 {
            return "E"
        }
        if average >= 70 && average < 80 {
            return "A"
        }
        if average >= 55 && average < 70 {
            return "P"
        }
        if average >= 40 && average < 55 {
            return "D"
        }
        if average < 40 {
            return "T"
        }
        return " "
    }
    
    
} // End of class Student

let nameAndID = readLine()!.components(separatedBy: " ")
let _ = readLine()
let scores = readLine()!.components(separatedBy: " ").map{ Int($0)! }

let s = Student(firstName: nameAndID[0], lastName: nameAndID[1], id: Int(nameAndID[2])!, scores: scores)

s.printPerson()

print("Grade: \(s.calculate())")
