//
//  main.swift
//  Day24(MoreLinkedLists)
//
//  Created by Atif on 03/04/2019.
//  Copyright © 2019 Atif. All rights reserved.
//

import Foundation

// Start of class Node
class Node {
    var data: Int
    var next: Node?
    
    init(d: Int) {
        data = d
    }
} // End of class Node

// Start of class LinkedList
class LinkedList {
    func insert(head: Node?, data: Int) -> Node? {
        if head == nil {
            return Node(d: data)
        }
        
        head?.next = insert(head: head?.next, data: data)
        
        return head
    }
    
    func display(head: Node?) {
        if head != nil {
            print(head!.data, terminator: " ")
            
            display(head: head?.next)
        }
    }
    // Start of function removeDuplicates
    func removeDuplicates(head: Node?) -> Node? {
        // Add your code here

        if (head == nil || head!.next == nil) {
            return head
        }
        if (head!.data == head!.next?.data) {
            head!.next = head!.next?.next
            _ = removeDuplicates(head: head)
        }else{
            _ = removeDuplicates(head: head!.next)
        }
        return head
    } // End of function removeDuplicates
} // End of class LinkedList


//6

//1
//2
//2
//3
//3
//4

// 1 2 3 4

var head: Node?
let linkedList = LinkedList()

let t = Int(readLine()!)!

for _ in 0..<t {
    head = linkedList.insert(head: head, data: Int(readLine()!)!)
}

linkedList.display(head: linkedList.removeDuplicates(head: head))
