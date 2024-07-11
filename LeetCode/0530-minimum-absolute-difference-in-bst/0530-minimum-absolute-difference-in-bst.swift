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
    var difference = Int.max
    var previousNodeValue: Int?

    func getMinimumDifference(_ root: TreeNode?) -> Int {
        inOrderTraversal(root)
        return difference
    }

    func inOrderTraversal(_ node: TreeNode?) {
        guard let currentNode = node else {
            return
        }

        inOrderTraversal(currentNode.left)

        if let value = previousNodeValue {
            difference = min(difference, abs(currentNode.val - value))
        }
        previousNodeValue = currentNode.val

        inOrderTraversal(currentNode.right)
    }
}