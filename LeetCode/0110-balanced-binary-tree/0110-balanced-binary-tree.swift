/**
 * Definition for a binary tree node.
 * public class TreeNode {
 *     public var val: Int
 *     public var left: TreeNode?
 *     public var right: TreeNode?
 *     public init() { self.val = 0; self.left = nil; self.right = nil; }
 *     public init(_ val: Int) { self.val = val; self.left = nil; self.right = nil; }
 *     public init(_ val: Int, _ left: TreeNode?, _ right: TreeNode?) {
 *         self.val = val
 *         self.left = left
 *         self.right = right
 *     }
 * }
 */
class Solution {
    var left = 0
    var right = 0
var flag = true

   func isBalanced(_ root: TreeNode?) -> Bool {
     //양쪽 노드비교 => 누적 => 2이상 차이나면 false

      func check(_ root: TreeNode?) -> Int {
         if root == nil {
             return 0
         } else {
             let left = check(root?.left)
             let right = check(root?.right)
             
             if abs(left - right) >= 2  {
                 flag = false
             }
             
             return max(left, right) + 1
         }
     }

     let left = check(root?.left)
     let right = check(root?.right)
    
        if flag == false {
            return false
        }
     if abs(left - right) >= 2  {
         return false
     } else {
         return true
     }
 }
}