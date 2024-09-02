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
    func invertTree(_ root: TreeNode?) -> TreeNode? {
        guard let root = root else {
            return nil
        }
        //var tempNode = root
        swap(root)

        return root
    }

    private func swap(_ node: TreeNode?) {
        guard let node = node else {
            return
        }

        var tempLeft: TreeNode? = node.left
        var tempRight: TreeNode? = node.right

        node.left = tempRight
        node.right = tempLeft

        swap(node.left)
        swap(node.right)        
    }
}