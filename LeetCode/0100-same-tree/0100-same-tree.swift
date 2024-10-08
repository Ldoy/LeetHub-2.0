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
    func isSameTree(_ p: TreeNode?, _ q: TreeNode?) -> Bool {
        return check(p, q)
    }
    func check(_ p: TreeNode?, _ q: TreeNode?) -> Bool {
        
        guard let p = p, let q = q else {
            if p == nil, q == nil {
                return true
            } else {
                return false
            }
        }

        if  p.val == q.val {
            let left = check(p.left, q.left)
            let right = check(p.right, q.right)
            return left && right
        } else {
            
            return false
        }

    }
}