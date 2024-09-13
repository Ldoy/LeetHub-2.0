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
    func maxDepth(_ root: TreeNode?) -> Int {
        // 왼쪽 혹은 오른쪽 없을 때 까지 돌리기 
        // if root != nil{
        //     depth += 1
        // } 

        // if root == nil {
        //     return depth
        // } 
        
        // if root.left != nil, root.right != nil {
        //     let tempLeftDepth = maxDepth(root.left)
        //     let tempRightDepth = maxDepth(root.left)
        //     depth = max(tempLeftDepth, tempRightDepth)
        // } else if root.right != nil, root.left == nil {
        //     let tempDepth = maxDepth(root.right)
        //     depth = tempDepth
        // } else {
        //     depth 
        // }

        guard let root = root else { return 0 }

        let maxLeft = maxDepth(root.left)
        let maxRight = maxDepth(root.right)

        return max(maxLeft, maxRight) + 1

    }

}