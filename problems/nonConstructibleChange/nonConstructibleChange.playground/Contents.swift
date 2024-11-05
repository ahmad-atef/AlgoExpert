import Foundation


class Solutino {
    func nonConstructibleChange(_ coins: inout [Int]) -> Int {
        var coins = coins.sorted()
        var currentChange = 0
        
        for coin in coins {
            if coin > currentChange + 1 {
                return currentChange + 1
            }
            currentChange += coin
        }
        return  currentChange + 1
    }
}

let solution = Solutino()
var input = [5, 1, 2]
solution.nonConstructibleChange(&input)

