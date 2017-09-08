//: Playground - noun: a place where people can play

import UIKit

// 1. Implement summation of an Array of Integers

func summation(for numbers: [Int]) -> Int {
    var sum = 0
    // do some logic in between
    
//    numbers.forEach { (num) in
//        sum += num
//    }

    numbers.forEach{ sum += $0 }
    
    return sum
}

summation(for: [1, 2, 3, 4])

//let mySum = [1, 2, 3, 4].reduce(0) { (res, next) -> Int in
//    return res + next
//}

let mySum = [1, 2, 3, 4].reduce(0, {$0 + $1})

print("MySum:", mySum)

// 2. Implement the product of an Array of Intergers

func productFunction(for numbers:[Int]) -> Int {
    
    var product = 1
    
    numbers.forEach { (num) in
        product *= num
    }
    
    return product
}

productFunction(for: [1, 2, 3, 4])

let myProduct = [1, 2, 3, 4].reduce(1, {$0 * $1})
print("myProduct:", myProduct)


// 3. Transform an Array of Strings into a sentence

let facts = ["Lin", "is", "the", "greatest", "of", "all", "time"]

func transformIntoSentence(for words:[String]) -> String {
    var initialResult = ""
    
    // somehow append words onto initialResult
//    words.forEach { (word) in
//        initialResult += word + " "
//    }

    words.forEach({initialResult += $0 + " "})
    
    return initialResult
}

transformIntoSentence(for: ["A", "sly", "fox", "jumps"])

let trueFacts = facts.reduce("", {$0 + $1 + " "})
print("trueFacts:", trueFacts)





