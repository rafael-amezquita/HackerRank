import UIKit

// https://www.hackerrank.com/challenges/jumping-on-the-clouds/problem?h_l=interview&playlist_slugs%5B%5D=interview-preparation-kit&playlist_slugs%5B%5D=warmup

func jumpingOnClouds(c: [Int]) -> Int {
    
    var steps = 0
    var currentStep = 0
    let lenght = c.count - 1
    while currentStep < lenght {
        // current cloud should always be 0
        var stepValue = 0
        if currentStep + 2 <= lenght && c[currentStep + 2] == 0 {
            print("currentScurrentStep + 2 <= c.count = \(currentStep + 2 <= lenght)")
            stepValue += 2
        } else {
            if currentStep + 1 <= lenght {
                print("currentStep + 1 <= c.count = \(currentStep + 1 <= lenght)")
                if  c[currentStep + 1] == 0 { stepValue += 1 }
            }
        }
        steps += 1
        currentStep += stepValue
        print("currentStep = \(currentStep)")
        print("steps = \(steps)")
    }
    
    return steps
}

let steps = jumpingOnClouds(c: [0, 0, 0, 1, 0, 0])
//let steps = jumpingOnClouds(c: [0, 0, 1, 0, 0, 1, 0])
steps
