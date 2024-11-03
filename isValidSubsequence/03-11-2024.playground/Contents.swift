import Foundation

/// Time: O(n), Space: O(1)
class Program {
    static func isValidSubsequence(_ array: [Int], _ sequence: [Int]) -> Bool {
        var sequenceIndex = 0
        var arrayIndex = 0
        
        while sequenceIndex < sequence.count && arrayIndex < array.count {
            if sequence[sequenceIndex] == array[arrayIndex] {
                sequenceIndex += 1
            }
            arrayIndex += 1
        }
        return sequenceIndex == sequence.count
    }
}

Program.isValidSubsequence([5, 1, 22, 25, 6, -1, 8, 10], [5, 1, 22, 25, 6, -1, 8, 10])
