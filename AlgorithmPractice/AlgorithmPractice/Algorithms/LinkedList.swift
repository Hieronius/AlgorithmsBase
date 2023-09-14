//
//  LinkedList.swift
//  AlgorithmPractice
//
//  Created by Арсентий Халимовский on 04.09.2023.
//

import Foundation

struct LinkedList<T> {
    var head: LinkedListNode<T>
    init(head: LinkedListNode<T>) {
        self.head = head
    }
}

//indirect enum LinkedListNode<T> {
//    case value(element: T, next: LinkedListNode<T>, previous: LinkedListNode<T>)
//    case end
//    case head
//}
//let element1 = LinkedListNode.value(element: "A", next: element2, previous: .head)
//let element2 = LinkedListNode.value(element: "B", next: element3, previous: element1)
//let element3 = LinkedListNode.value(element: "C", next: element4, previous: element2)
//let element4 = LinkedListNode.value(element: "D", next: .end, previous: element3)
//let list = LinkedList(head: element1)

indirect enum LinkedListNode<T> {
    case value(element: T, next: LinkedListNode<T>)
    case end
}

let element1 = LinkedListNode.value(element: "A", next: element2)
let element2 = LinkedListNode.value(element: "B", next: element3)
let element3 = LinkedListNode.value(element: "C", next: element4)
let element4 = LinkedListNode.value(element: "D", next: .end)

let list = LinkedList(head: element1)

extension LinkedList: Sequence {
    func makeIterator() -> LinkedListIterator<T>{
        return LinkedListIterator(current: head)
    }
}

struct LinkedListIterator<T>: IteratorProtocol {
    var current: LinkedListNode<T>
    
    mutating func next() -> T? {
        switch current {
        case let .value(element, next):
            current = next
            return element
        case .end:
            return nil
        }
    }
}
