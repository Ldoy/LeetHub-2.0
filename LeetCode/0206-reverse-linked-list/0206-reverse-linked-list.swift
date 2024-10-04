/**
 * Definition for singly-linked list.
 * public class ListNode {
 *     public var val: Int
 *     public var next: ListNode?
 *     public init() { self.val = 0; self.next = nil; }
 *     public init(_ val: Int) { self.val = val; self.next = nil; }
 *     public init(_ val: Int, _ next: ListNode?) { self.val = val; self.next = next; }
 * }
 */
class Solution {
    func reverseList(_ head: ListNode?) -> ListNode? {
        var previous: ListNode? = nil
        var current = head

        while let temp = current {
            let next = temp.next  // Store the next node
            temp.next = previous  // Reverse the link
            previous = temp       // Move previous to current
            current = next        // Move to the next node
        }
        
        return previous  // New head of the reversed list
    }
}