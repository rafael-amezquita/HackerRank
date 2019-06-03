import Foundation

// https://www.hackerrank.com/challenges/repeated-string/problem?h_l=interview&playlist_slugs%5B%5D=interview-preparation-kit&playlist_slugs%5B%5D=warmup

func repeatedString(s: String, n: Int) -> Int {

    var aPerSubstrings = 0
    var aPerRemainder = 0
    let substringRepetitionss = Int(n / s.count)
    
    let remainder = n % s.count
    remainder
    for char in s {
        if char == "a" {
            aPerSubstrings += 1
        }
    }
    
    let totalAsInS = aPerSubstrings * substringRepetitionss
    totalAsInS
    for index in 0..<remainder {
        let remainderCharIndex = s.index(s.startIndex, offsetBy: index)
        let remainderChar = s[remainderCharIndex]
        print(remainderChar)
        if remainderChar == "a" {
            aPerRemainder += 1
        }
    }

    return totalAsInS + aPerRemainder
}

let repetition = repeatedString(s: "aba", n: 10)
repetition
