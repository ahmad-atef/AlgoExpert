import Foundation

class Solution {
    func palindromeCheck(_ input: String) -> Bool {
        let letters = input.map { $0 }
        
        var leftIndex = 0
        var rightIndex = letters.count - 1
        
        while leftIndex != rightIndex {
            if letters[leftIndex] != letters[rightIndex] {
                return false
            }
            leftIndex += 1
            rightIndex -= 1
        }
        
        return true
    }
    
    func splitStringPalindromeCheck(_ input: String) -> Bool {
        let letters = [Character](input) // also can be implemented via `map` operator => .map{ $0 }
        var leftSide = letters[0..<letters.count / 2]
        var rightSide = letters[((letters.count/2)+1)..<letters.count]
        
        print(Array(leftSide))
        print(Array(rightSide.reversed()))
              
        return Array(leftSide) == Array(rightSide.reversed())
    }
}

let solution = Solution()
solution.palindromeCheck("carerac")
solution.splitStringPalindromeCheck("cac")

