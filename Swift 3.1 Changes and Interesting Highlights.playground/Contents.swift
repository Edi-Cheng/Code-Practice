//: Playground - noun: a place where people can play

import UIKit

// Nested Generics

// Xcode 8.2, Swift 3.0 does not support Nested Generics so we declare this outside.
//class StackItem<T> {
//    let value: T
//    var next: StackItem<T>?
//    init(value: T) {
//        self.value = value
//    }
//}
//
//struct Stack<T> {
//    
//    var top: StackItem<T>?
//    
//    mutating func pop() -> T? {
//        let value = top?.value
//        top = top?.next
//        return value
//    }
//    
//    mutating func push(value: T) {
//        let oldTop = top
//        top = StackItem(value: value)
//        top?.next = oldTop
//    }
//    
//}


struct Stack<T> {
    
    class StackItem {
        let value: T
        var next: StackItem?
        init(value: T) {
            self.value = value
        }
    }
    
    var top: StackItem?
    
    mutating func pop() -> T? {
        let value = top?.value
        top = top?.next
        return value
    }
    
    mutating func push(value: T) {
        let oldTop = top
        top = StackItem(value: value)
        top?.next = oldTop
    }
    
}

var stack = Stack<Int>()
stack.push(value: 1)
stack.push(value: 2)
stack.pop()
stack.pop()
stack.pop()


// Availability By Swift Version

#if swift(>=3.1)
    func intVersion(number: Double) -> Int? {
        return Int(exactly: number)
    }
#elseif swift(>=3.0)
    func intVersion(number: Double) -> Int {
        return Int(number)
    }
#endif

let version = intVersion(number: 4)












