import UIKit


func sockMerchant(n: Int, ar: [Int]) -> Int {
    var map: [Int: Int] = [:]
    for value in ar {
        var counter = 0
        if let mapValue = map[value] { counter = mapValue + 1 }
        else { counter = 1 }
        map[value] = counter
    }
    
    
    for (key, value) in map {
        if value > 1 {
            map[key] = Int(value / 2)
        } else {
            map[key] = 0
        }
    }
    
    var pairsCounter = 0
    for (_ , value) in map {
        pairsCounter += value
    }
    
    return pairsCounter
}

let pairs = sockMerchant(n: 7, ar: [1,2,1,2,1,3,2])
pairs
