import Foundation

class ListNode {
    var value: Int
    var next: ListNode?
    
    init(_ value: Int, next: ListNode?) {
        self.value = value
        self.next = next
    }
}

func reverseList(_ head: ListNode?) -> ListNode?{
    var previous: ListNode? = nil
    var current: ListNode? = head
    
    while current != nil {
        let next = current?.next
        current?.next = previous
        previous = current
        current = next
    }
    return previous
}

reverseList(ListNode(1, next: ListNode(2, next: ListNode(3, next: nil))))
