// https://www.hackerrank.com/challenges/ctci-making-anagrams/problem?h_l=interview&playlist_slugs%5B%5D=interview-preparation-kit&playlist_slugs%5B%5D=strings

import Foundation

func map(from string: String) -> [String: Int] {
    var mapA: [String: Int] = [:]
    for char in string {
        let key = "\(char)"
        var value = 1
        if let mappedValue = mapA[key] { value += mappedValue }
        mapA[key] = value
    }
    return mapA
}

func difference(from map:[String: Int], resultMap: inout [String: Int]) {
    for (key, value) in map {
        if let previousValue = resultMap[key]  {
            resultMap[key] = abs(previousValue - value)
        } else {
            resultMap[key] = value
        }
    }
}

func merge(mapA: [String: Int], mapB: [String: Int]) ->  [String: Int] {
    var resultMap: [String: Int] = [:]
    difference(from: mapA, resultMap: &resultMap)
    difference(from: mapB, resultMap: &resultMap)
    return resultMap
}

func makeAnagram(a: String, b: String) -> Int {
    
    let mapA = map(from: a)
    let mapB = map(from: b)
    let resultMap = merge(mapA: mapA, mapB: mapB)

    // counting
    var count = 0
    for (_, value) in resultMap {
        count += value
    }
    
    return count
}


makeAnagram(a: "cde", b: "abc")
//makeAnagram(a: "hello", b: "billion")
