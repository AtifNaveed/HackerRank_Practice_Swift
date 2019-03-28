//
//  main.swift
//  Day15(LinkedList)
//
//  Created by Atif on 24/03/2019.
//  Copyright © 2019 atif.gcucs@gmail.com. All rights reserved.
//

import Foundation

class Node {
    let data: Int
    var next: Node?
    
    init(data: Int) {
        self.data = data
    }
}

func insert(head: Node?, data: Int!) -> Node? {
    // Enter your code here.
    if head == nil {
        return Node(data: data)
    }
    else if head?.next == nil {
        head?.next = Node(data: data)
    }
    else {
        _ = insert(head: head?.next, data: data)
    }
    
    return head
}

func display(head: Node?) {
    var current = head
    
    while current != nil {
        print(current!.data, terminator: " ")
        current = current!.next
    }
}

var head: Node?
let n: Int = Int(readLine()!)!

for _ in 0..<n {
    let element = Int(readLine()!)!
    head = insert(head: head, data: element)
}

display(head: head)
