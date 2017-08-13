//: Playground - noun: a place where people can play

import UIKit

// Implement a function that will tell me for each palindrome, how much times it counts.
// For example:
// ["Civic": 1, "madam": 1, "kayak": 1, "anna": 2, "racecar": 1]

let scentece = "madam anan kayak notapalindrome anan Civic racecar"

func isPalindrome(word: String) -> Bool {
    
    let characters = Array(word.lowercased())
    
    var currentIndex = 0
    
    while currentIndex < characters.count / 2 {
        
        if characters[currentIndex] != characters[characters.count - currentIndex - 1] {
            return false
        }
        currentIndex += 1
    }
    
    return true
}

func allPalindromeCounts(sentence: String) -> [String: Int] {
    
    var counts = [String: Int]()
    
    let words = sentence.components(separatedBy: " ")
    words.forEach { (word) in
        
        if isPalindrome(word: word) {
            let count = counts[word]
            count[word] = count + 1
        }
    }
    
    return counts
}

let counts = allPalindromeCounts(sentence: scentece)
print("Counts: ", counts)







