//: Playground - noun: a place where people can play

import UIKit

let someParameters = ["couse":"networking", "nanodegree":"ios", "quiz":"escaping parameters"]

private func escapedParameters(_ parameters: [String: AnyObject]) -> String {
    
    if parameters.isEmpty {
        return ""
    } else {
        
        var keyValuePairs = [String]()
        
        for (key, value) in parameters {
            
            let stringValue = "\(value)"
            
            let escapedValue = stringValue.addingPercentEncoding(withAllowedCharacters: .urlQueryAllowed)
            
            keyValuePairs.append(key + "=" + "\(escapedValue!)")
        }
        return "?\(keyValuePairs.joined(separator: "&"))"
    }
}

print(escapedParameters(someParameters  as [String: AnyObject]))