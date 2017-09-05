//: Playground - noun: a place where people can play

import UIKit

// [1] -> [1]
// [1, 2, 3] -> [1, 2, 3]
// [1, [2]] -> [1, 2]
// [1, [2, 3]] -> [1, 2, 3]
// [1, [2, [3, 4]]] -> [1, 2, 3, 4]

func flattenArray(nestedArray: [Any]) -> [Int] {
    
    var myFlattendArray = [Int]()
    
    for element in nestedArray {
        print(element)
        
        if element is Int {
            myFlattendArray.append(element as! Int)
        } else if element is [Any] {

            let recursionResult = flattenArray(nestedArray: element as! [Any])
            
            for num in recursionResult {
                myFlattendArray.append(num)
            }
            
//            let nestedElements = element as! [Int]
//            
//            for num in nestedElements {
//                myFlattendArray.append(num)
//            }
        }
    }
    
    return myFlattendArray
}

let result = flattenArray(nestedArray: [1, [2, [3, 4]]])
print("Result:", result)