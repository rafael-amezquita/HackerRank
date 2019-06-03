import Foundation

// https://www.hackerrank.com/challenges/insert-a-node-at-a-specific-position-in-a-linked-list/problem?h_l=interview&playlist_slugs%5B%5D=interview-preparation-kit&playlist_slugs%5B%5D=linked-lists

class SinglyLinkedListNode {
    var data: Int
    var next: SinglyLinkedListNode?
    init(data: Int) {
        self.data = data
    }
}

class SinglyLinkedList {
    var head: SinglyLinkedListNode?
    var tail: SinglyLinkedListNode?
    init() {}
    
    func insert(_ value: Int) {
        let newNode = SinglyLinkedListNode(data: value)
        if let currentNode = tail {
            currentNode.next = newNode
        } else {
            head = newNode
        }
        tail = newNode
    }
    
    func insert(value: Int, at index: Int) {
        let newNode = SinglyLinkedListNode(data: value)
        // index - 1 = parent node index
        let parentNode = insertIn(node: head, at: index - 1, counter: 0)
        
        let nodeToHold = parentNode?.next
        parentNode?.next = newNode
        newNode.next = nodeToHold
        
        print("parentNode Value = \(parentNode!.data), new nodeValue = \(newNode.data), nodeToHold Value = \(nodeToHold!.data)")
    }
    
    private func insertIn(node: SinglyLinkedListNode?, at index: Int, counter: Int) -> SinglyLinkedListNode? {
        if counter == index { return node }
        return insertIn(node: node?.next, at: index, counter: counter + 1)
    }
    
    func lenght() -> Int {
        return count(node: head, counter: 0)
    }
    
    private func count(node: SinglyLinkedListNode?, counter: Int) -> Int {
        guard let currentNode = node else { return counter }
        print("counter = \(counter), nodeValue = \(currentNode.data)")
        return count(node: currentNode.next, counter: counter + 1)
    }
}

func insertNodeAtPosition(head: SinglyLinkedListNode?, data: Int, position: Int) -> SinglyLinkedListNode? {
    let linkedList = SinglyLinkedList()
    linkedList.head = head
    linkedList.insert(value: 4, at: 2)
    return linkedList.head
}

//let linkedList = SinglyLinkedList()
//linkedList.insert(1)
//linkedList.insert(2)
//linkedList.insert(3)
////linkedList.lenght()
//print("________________")
//linkedList.insert(value: 4, at: 2)
//linkedList.lenght()
