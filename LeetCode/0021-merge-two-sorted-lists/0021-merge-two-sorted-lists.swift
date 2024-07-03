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
    func mergeTwoLists(_ list1: ListNode?, _ list2: ListNode?) -> ListNode? {
    //https://leetcode.com/problems/merge-two-sorted-lists/solutions/1132854/accepted-solution-for-swift


     guard let list1 = list1, let list2 = list2 else {
        return list1 ?? list2
    }
    
    if list1.val > list2.val {
        list2.next = mergeTwoLists(list1, list2.next)
        return list2
    } else if list1.val <= list2.val {
        list1.next = mergeTwoLists(list1.next, list2)
        return list1
    }
    
    return nil



    //Time Limit Exceeded
    // guard let list1 = list1, let list2 = list2 else {
    //     return nil
    // }
    
    // var new = ListNode()
    // var one = list1
    // var two = list2
    // var prev = two
    
    // while two.next != nil {
    //     if one.val > two.val {
    //         guard two.next != nil else {
    //             break
    //         }
    //         prev = two
    //         two = two.next!
    //     } else if one.val < two.val {
    //         prev.next = one
            
    //         guard (prev.next != nil) || (one.next != nil) else {
    //             break
    //         }
            
    //         prev = prev.next!
    //         one = one.next!
    //     } else {
    //         one.next = two
    //         prev = two
            
    //         guard (two.next != nil) || (one.next != nil) else {
    //             break
    //         }
            
    //         two = two.next!
    //         one = one.next!
    //     }
    // }
    
    // return two
    }

}