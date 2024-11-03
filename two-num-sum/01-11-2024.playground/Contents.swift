import Foundation

final class Solution {
    /// time complexity: O(n^2)
    /// memory complexity: O(1)
    func twoNumSumUsingDoubleLoop(_ array: [Int], targetSum: Int) -> [Int] {
        for i in 0..<array.count {
            for j in i+1..<array.count {
                if array[i] + array[j] == targetSum {
                    return [array[i], array[j]]
                }
            }
        }
        return []
    }
    
    /// time complexity: O(n)
    ///space complexity: O(n)
    /// ⭐️
    func twoNumSumUsingHashTable(_ array: [Int], targetSum: Int) -> [Int] {
        var complementHashTable: [Int: Bool] = [:]
        for number in array {
            var complement = targetSum - number
            if complementHashTable[complement] != nil {
                return [number, complement]
            } else {
                complementHashTable[number] = true
            }
        }
        return []
    }
    
    /// time complexity: O(n-logn)
    ///space complexity: O(1)
    func twoNumSumUsingSorting(_ array: [Int], targetSum: Int) -> [Int] {
        // the list has to be sorted first
        let array = array.sorted()
        
        var leftPointer = 0
        var rightPointer = array.count - 1
        
        while leftPointer < rightPointer && rightPointer < array.count {
            let leftValue = array[leftPointer]
            let rightValue = array[rightPointer]
            let summationValue = leftValue + rightValue
            
            guard summationValue != targetSum else {
                return [leftValue, rightValue]
            }
            if summationValue > targetSum {
                rightPointer -= 1
            } else {
                leftPointer += 1
            }
        }
        return []
    }
}

let solution = Solution()
solution.twoNumSumUsingDoubleLoop([3, 5, -4, 8, 11, 1, -1, 6], targetSum: 10)
solution.twoNumSumUsingHashTable([3, 5, -4, 8, 11, 1, -1, 6], targetSum: 10)
solution.twoNumSumUsingSorting([3, 5, -4, 8, 11, 1, -1, 6], targetSum: 10)

