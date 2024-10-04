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
    func isSubtree(_ root: TreeNode?, _ subRoot: TreeNode?) -> Bool {
        if  subRoot == nil {
            return true
        } 

        if root == nil {
            return false
        }

        if check(root, subRoot) {
            return true
        } else {
            return (isSubtree(root!.left, subRoot!) ||
            isSubtree(root!.right, subRoot))
        }
    }

    func check(_ rootNode: TreeNode?, _ subRootNode: TreeNode?) -> Bool {
        // 두 개의 노드가 모두 비어있는 경우를 제외하고 모두 false
        guard let rootNode = rootNode, let subRootNode = subRootNode else {
            return rootNode == nil && subRootNode == nil
        }

        // 시작 노드가 같다면,
        if rootNode.val == subRootNode.val {
            let left = check(rootNode.left, subRootNode.left) 
            let right = check(rootNode.right, subRootNode.right)

            return left && right 
        } else {
           return false
        }
        
    }
} 