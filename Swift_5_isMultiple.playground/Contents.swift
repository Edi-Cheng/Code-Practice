import UIKit

// 1. How to slove FizzBuzz algorithm with new isMultiple(of: x) function?
// 2. Slove this like PRO using a Switch Statement

(0...100).forEach { (num) in
    
    // Method One
    if num % 3 == 0 && num % 5 == 0 {
        print("\(num): FizzBuzz")
    } else if (num % 3 == 0) {
        print("\(num): Fizz")
    } else if (num % 5 == 0) {
        print("\(num): Buzz")
    } else {
        print(num)
    }
    
    // Method Two
    if num.isMultiple(of: 15) {
        print("\(num): FizzBuzz")
    } else if num.isMultiple(of: 3) {
        print("\(num): Fizz")
    } else if num.isMultiple(of: 5) {
        print("\(num): Buzz")
    } else {
        print(num)
    }
    
    // Method three
    switch (num.isMultiple(of: 3), num.isMultiple(of: 5)) {
    case (true, true):
        print("\(num): FizzBuzz")
    case (true, false):
        print("\(num): Fizz")
    case (false, true):
        print("\(num): Buzz")
    default:
        print(num)
    }
    
    // Method four
    switch num {
    case let x where x.isMultiple(of: 15):
        print("\(num): FizzBuzz")
    case let x where x.isMultiple(of: 3):
        print("\(num): Fizz")
    case let x where x.isMultiple(of: 5):
        print("\(num): Buzz")
    default:
        print(num)
    }
}
