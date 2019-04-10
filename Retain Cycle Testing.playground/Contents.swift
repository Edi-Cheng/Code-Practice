//: Playground - noun: a place where people can play

import UIKit

//class Person {
//    let name: String
//    
//    var apartment: Apartment?
//    
//    init(name: String) {
//        self.name = name
//    }
//    
//    deinit {
//        print("\(name) is beeing deinitialized")
//    }
//}
//
//class Apartment {
//    let number: Int
//    weak var tenant: Person?
//    
//    init(number: Int) {
//        self.number = number
//    }
//    
//    deinit {
//        print("Apartment \(number) is beeing deinitialized")
//    }
//}
//
//var bob: Person? = Person(name: "Bob")
//
//var apt: Apartment? = Apartment(number: 123)
//
//apt?.tenant = bob
//bob?.apartment = apt
//
//bob = nil
//apt = nil


// Closure Strong Refernece Cycle

class HTMLElement {
    let name: String
    let text: String
    
    lazy var asHTML: () -> String = { [weak self] in
        
        guard let this = self else { return "" }
        
        return "<\(this.name)>\(this.text)</\(this.name)>"
    }
    
    init(name: String, text: String) {
        self.name = name
        self.text = text
    }
    
    deinit {
        print("HTMLElement \(name) is being deinitialized")
    }
}


var paragraph: HTMLElement? = HTMLElement(name: "p", text: "Some Simple paragraph body text")

paragraph?.asHTML() // <p>Some Simple paragraph body text</p>

paragraph = nil














