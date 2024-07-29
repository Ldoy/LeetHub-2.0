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
    func reverseBetween(_ head: ListNode?, _ left: Int, _ right: Int) -> ListNode? {
        var newhead: ListNode? = ListNode(-1)
        newhead?.next = head
        var temp = newhead

        var count = 0

        while temp != nil {
            if count > right {
                break
            }
            if count == left-1 {
                let temphead = temp 
                let temp2 = temp?.next
                while (count < right-1) && temp2 != nil {
                    var temp3 = temp2?.next
                    temp2?.next = temp3?.next                    
                    temp3?.next = temphead?.next
                    temphead?.next = temp3
                    count += 1
                }
            }
            temp = temp?.next
            count += 1
        }

        return newhead?.next
    }
}