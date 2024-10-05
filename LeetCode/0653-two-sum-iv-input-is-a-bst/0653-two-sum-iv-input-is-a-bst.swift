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
    var store = [Int]()
    func findTarget(_ root: TreeNode?, _ k: Int) -> Bool {

        addNode(root)
        if store.count == 1 {
            return false
        }
        return check(k)
    }

    func check(_ k: Int) -> Bool {
        for i in store {
            for j in store {
                if i == j  {
                    continue
                } else if i + j == k {
                    return true
                }
            }
        }

        return false
    }
    func addNode(_ node: TreeNode?) {
        if node == nil {
            return 
        } 

        store.append(node!.val)
        addNode(node!.left)
        addNode(node!.right)
    }

    //모든 노드의 val 가져오기 => 조합찾기?
    //root 에서 시작해서 조합 찾고 없으면 다른 방향으로?

    // 5 + 3, 5 + 6 != k -> 
    // 
}