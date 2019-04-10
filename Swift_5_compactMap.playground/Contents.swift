import UIKit

// How to use compactMap?, map, flatMap

// Store

struct Store {
    let name: String
    var electronicHardware: [String]?
}

// Find all of the electronic items sold in the area?

let target = Store(name: "Target", electronicHardware: ["iPhone", "iPas", "Flatscreen TVs"])

let bestBuy = Store(name: "Best Buy", electronicHardware: ["Laptops", "Big Fridges"])

let bedBathAndBeyond = Store(name: "Bed Bath & Beyond", electronicHardware: [])

//let items = target.electronicHardware! + bestBuy.electronicHardware! + bedBathAndBeyond.electronicHardware!
//
//let items2 = [target, bestBuy, bedBathAndBeyond].map{ $0.electronicHardware }
//
//let items3 = [target, bestBuy, bedBathAndBeyond].flatMap{ $0.electronicHardware }

let items4 = [target, bestBuy, bedBathAndBeyond].compactMap({ $0.electronicHardware }).flatMap{$0}

print(items4)
