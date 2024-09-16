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
    func diameterOfBinaryTree(_ root: TreeNode?) -> Int {
        // if node - childnode -> return 1 or 0 => add
        var result = 0
        func check(_ root: TreeNode?) -> Int {
        // if node - childnode -> return 1 or 0 => add

        //guard root != nil else { return 0 }
        
        if root == nil {
            return 0
        } 
            let leftDiameter = check(root?.left)
            let rightDiameter = check(root?.right)
            result = max(result, leftDiameter + rightDiameter)
            return max(leftDiameter, rightDiameter) + 1
        
        }

        check(root)
        
        return result
    }
}
