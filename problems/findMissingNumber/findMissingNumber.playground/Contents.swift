import Foundation


class Solution {
    
    /// Time: O(n_log(n))
    /// Space: O(1)
    func findMissingNumber(_ input: [Int]) -> Int {
        var input = input.sorted()
        for i in 0..<input.count {
            if input[i] != i {
                return i
            }
        }
        return -1
    }
    
    /// Time: O(n)
    /// Space: O(1)
    func findMissingNumberUsingGaussFormula(_ input: [Int]) -> Int {
        var n = input.count
        let expectedSum = (n * (n + 1)) / 2
        let actualSum = input.reduce(0, +)
        
        return expectedSum - actualSum
    }
}

let solution = Solution()
var numbers = [3, 0, 1, 4, 2, 6]
solution.findMissingNumber(numbers)
solution.findMissingNumberUsingGaussFormula(numbers)

