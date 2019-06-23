//
//  main.swift
//  Day22(BinarySearchTrees)
//
//  Created by Atif on 28/03/2019.
//  Copyright © 2019 Atif. All rights reserved.
//

import Foundation

class Node {
     let data: Int
     var left: Node?
     var right: Node?
     
     init (d: Int) {
          data = d
     }
}

class Tree {
     func insert(root: Node?, data: Int) -> Node? {
          if root == nil {
               return Node(d: data)
          }
          if data <= (root?.data)! {
               root?.left = insert(root: root?.left, data: data)
          }else {
               root?.right = insert(root: root?.right, data: data)
          }
          return root!
     }
     
     func getHeight(root: Node?) -> Int {
          // Complete the function
          if root == nil {
               return -1
          }
          return max(getHeight(root:root?.left), getHeight(root:root?.right))+1
     } // End of getHeight function
}

//7

//3
//5
//2
//1
//4
//6
//7
var root: Node?
let tree = Tree()

let t = Int(readLine()!)!
for _ in 0..<t {
     root = tree.insert(root: root, data: Int(readLine()!)!)
}

print(tree.getHeight(root: root))


