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
        guard let head = head, left != right else { return head }
        
        let dummyNodeHead = ListNode(-1)
        dummyNodeHead.next = head
        
        var tempCurrent: ListNode? = dummyNodeHead
        var tempLeftPrev: ListNode? = dummyNodeHead
        
        // 왼쪽 직전 노드 찾기
        for _ in 0..<(left - 1) {
            tempLeftPrev = tempLeftPrev?.next
        }
        
        tempCurrent = tempLeftPrev?.next
        var previous: ListNode? = nil
        var tempNext: ListNode? = nil
        
        // 리버스 부분 처리
        for _ in 0..<(right - left + 1) {
            tempNext = tempCurrent?.next
            tempCurrent?.next = previous
            previous = tempCurrent
            tempCurrent = tempNext
        }
        
        // 서브리스트 연결 처리
        tempLeftPrev?.next?.next = tempCurrent
        tempLeftPrev?.next = previous
        
        return dummyNodeHead.next
    }
}