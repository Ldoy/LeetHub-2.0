/**
 * Definition for a Node.
 * public class Node {
 *     public var val: Int
 *     public var next: Node?
 *     public var random: Node?
 *     public init(_ val: Int) {
 *         self.val = val
 *         self.next = nil
 *    	   self.random = nil
 *     }
 * }
 */

class Solution {

    var hashMap = [Node?: Node?]()

    func copyRandomList(_ head: Node?) -> Node? {

        guard let head = head else { return nil }

        guard hashMap[head] == nil else { return hashMap[head]!}

        let newNode = Node(head.val)
        hashMap[head] = newNode

        newNode.next = copyRandomList(head.next)
        newNode.random = copyRandomList(head.random)

        return newNode
    }
}