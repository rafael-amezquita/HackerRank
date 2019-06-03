import Foundation
//https://www.hackerrank.com/challenges/counting-valleys/problem?h_l=interview&playlist_slugs%5B%5D=interview-preparation-kit&playlist_slugs%5B%5D=warmup


func countingValleys(n: Int, s: String) -> Int {
    
    var path = [Int]()
    var stepsValue = 0
    var valleys = 0
    
    for char in s {
        let characterString = "\(char)"
        if characterString == "U" {
            path.append(1)
        }
        if characterString == "D" {
            path.append(-1)
        }
    }
    
    for index in 0..<n {
        let currentStepValue = path[index]
        print("stepsValue \(stepsValue), current = \(currentStepValue)")
        if stepsValue == 0 && currentStepValue == -1 {
            valleys += 1
        }
        stepsValue += currentStepValue
    }
    return valleys
}

//let valleys = countingValleys(n: 8, s: "UDDDUDUU") //1
//let valleys = countingValleys(n: 12, s: "DDUUDDUDUUUD") //2
let valleys = countingValleys(n: 10, s: "UDUUUDUDDD") //0
valleys
