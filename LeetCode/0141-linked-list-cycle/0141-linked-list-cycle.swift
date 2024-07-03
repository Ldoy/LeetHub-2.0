/**
 * Definition for singly-linked list.
 * public class ListNode {
 *     public var val: Int
 *     public var next: ListNode?
 *     public init(_ val: Int) {
 *         self.val = val
 *         self.next = nil
 *     }
 * }
 */



//https://youtu.be/RRSItF-Ts4Q
class Solution {

    
  func hasCycle(_ head: ListNode?) -> Bool {
    guard let head = head else {
        return false
    }
    
    var slow = head
    var fast = head
    
    // fast, slow 포인터
    while slow.next != nil {
        slow = slow.next!
        
        guard  fast.next?.next != nil else {
            return false
        }
        
        fast = (fast.next?.next)!
        
        if slow === fast {
            return true
        }
    }
    return false
    }
}