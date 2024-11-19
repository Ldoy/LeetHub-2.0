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
       func averageOfLevels(_ root: TreeNode?) -> [Double] {
        guard let root = root else { return []}
        let emptyNode = TreeNode((-2 << 31) - 1)
        // 정답 담을 배열
        var result: [Double] = []
        //계산할 배열
        var queue: [TreeNode] = [root, emptyNode]

        while queue.first != nil, queue.first!.val != (-2 << 31) - 1 {
            var sum: Double = 0
            var nodes = 0

            while queue.first != nil, queue.first!.val != (-2 << 31) - 1 {
                let node = queue.removeFirst()
                    sum += Double(node.val)
                    nodes += 1

                    if let left = node.left {
                        queue.append(left)
                    }
                    if let right = node.right {
                        queue.append(right)
                    }
                
            }
            queue.append(queue.removeFirst())
            result.append(sum / Double(nodes))
        }
        return result
    }
}