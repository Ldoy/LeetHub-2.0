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
func oddEvenList(_ head: ListNode?) -> ListNode? {
        guard let head = head else {
            return nil
        }

        var tempNode: ListNode? = head
        var evenNode: ListNode? = head.next
        var evenNodeHead = evenNode
        
        while (evenNode != nil) && evenNode?.next != nil {
            tempNode!.next = evenNode?.next
            tempNode = tempNode!.next

            evenNode?.next = tempNode!.next
            evenNode = evenNode?.next
        }
        
        tempNode?.next = evenNodeHead
        return head
    }   
}
//even을 한 대로 묶기

//odd연결

//odd 인 경우 어덯게 count? -> var number

//number 가 홀수인경우
//그 노드의 next 끊기, 그리고 그 next 노드 와 연결할 새로운 노드에 옮기기
// odd 의 next 는 next 노드의next,
// 만약 node의 next, next 가 없다면, 그건 그 노드의 개수가 짝수라는 뜻. 
// 이 순간 해당하는 node의 next 노들르 even 노드 모아둔 곳에 추가

// 마지막으로 홀수 노드와 짝수노드 연결