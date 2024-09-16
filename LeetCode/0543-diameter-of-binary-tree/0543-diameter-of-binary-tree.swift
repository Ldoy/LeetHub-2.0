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
        var ans = 0
        
        func maxDepth(_ root: TreeNode?) -> Int {
            if root == nil {
                return 0
            }
            var l = maxDepth(root?.left)
            var r = maxDepth(root?.right)
            ans = max(ans, l + r)
            return 1 + max(l, r)
        }
        
        maxDepth(root)
        return ans
    }
}
