//
//  main.swift
//  Day18(QueuesAndStacks)
//
//  Created by Atif on 28/03/2019.
//  Copyright © 2019 Atif. All rights reserved.
//

import Foundation

class Solution {
    //Write your code here
    var stack = ""
    var queue = ""
    
    func pushCharacter(ch: Character) {
        stack.append(ch)
    }

    func enqueueCharacter(ch: Character) {
        queue.append(ch)
    }

    func popCharacter() -> Character {
        let char = stack.last
        _ = stack.dropLast()
        return char!
    }
    
    func dequeueCharacter() -> Character{
        let char = queue.first
        _ = queue.dropFirst()
        return char!
    }

}

// LIFO Stack
// FIFO Queue

// read the string s.
// let s = readLine()!

let s = "madam"

// create the Solution class object p.
let obj = Solution()

// push/enqueue all the characters of string s to stack.
for character in s {
    obj.pushCharacter(ch: character)
    obj.enqueueCharacter(ch: character)
}


var isPalindrome = true

// pop the top character from stack.
// dequeue the first character from queue.
// compare both the characters.
for _ in 0..<(s.count / 2) {
    if obj.popCharacter() != obj.dequeueCharacter() {
        isPalindrome = false
        
        break
    }
}

// finally print whether string s is palindrome or not.
if isPalindrome {
    print("The word, \(s), is a palindrome.")
} else {
    print("The word, \(s), is not a palindrome.")
}
