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

