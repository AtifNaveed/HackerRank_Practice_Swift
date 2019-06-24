//
//  main.swift
//  Day23(BST Level-Order Traversal)
//
//  Created by Atif on 02/04/2019.
//  Copyright © 2019 Atif. All rights reserved.
//

// Start of Node class
class Node {
    var data: Int
    var left: Node?
    var right: Node?
    
    init(d : Int) {
        data  = d
    }
} // End of Node class

// Start of Tree class
class Tree {
    func insert(root: Node?, data: Int) -> Node? {
        if root == nil {
            return Node(d: data)
        }
        
        if data <= (root?.data)! {
            root?.left = insert(root: root?.left, data: data)
        } else {
            root?.right = insert(root: root?.right, data: data)
        }
        
        return root
    }
    
    func levelOrder(root: Node?) -> Void {
        // Complete the function
        
        let height = treeHeight(node: root)
        //print(height)
        for i in 1...height {
            printLevel(root: root, level: i)
        }
        
    } // End of levelOrder function
    
    
    func printLevel(root:Node?, level:Int)
    {
        //print(level)
        if (root == nil) {
            return
        }
        if (level == 1) {
            print(root!.data, terminator:" ")
        }
        else if (level > 1) {
            printLevel(root: root?.left, level: level-1)
            printLevel(root: root?.right, level: level-1)
        }
    }
    
    func treeHeight(node: Node?) -> Int
    {
        if (node == nil) {
            return 0
        }
        else {
            let leftHeight = treeHeight(node: node?.left)
            let rightHeight = treeHeight(node: node?.right)
            
            if (leftHeight > rightHeight) {
                return leftHeight+1
            }
            else {
                return rightHeight+1
            }
        }
    }
    
} // End of Tree class


//6

//3
//5
//4
//7
//2
//1

//3 2 5 1 4 7

var root: Node?
let tree = Tree()

let t = Int(readLine()!)!

for _ in 0..<t {
    root = tree.insert(root: root, data: Int(readLine()!)!)
}

tree.levelOrder(root: root)

