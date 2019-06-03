import UIKit

// Problem:
// https://www.hackerrank.com/challenges/drawing-book/problem

//n: number of pages
//p: desired page
func pageCount(n: Int, p: Int) -> Int {
    
    let leftRight = Int(p/2)
    let rightLeft = (n % 2 == 0) ? Int(((n + 1) - p)/2) : Int((n - p)/2)

    return leftRight < rightLeft ? leftRight : rightLeft
}

// 5, 4
// 6, 2
// 6, 5
// 6, 4
let result = pageCount(n: 6, p: 5)
