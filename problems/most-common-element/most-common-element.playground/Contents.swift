import Foundation

class Solution {
    func mostCommonElement(_ list: [String]) -> String {
        
        var mostCommonItem = ""
        var itemsRedundancy: [String: Int] = [ mostCommonItem: 0 ]
        
        for item in list {
            if itemsRedundancy[item] != nil {
                itemsRedundancy[item]! += 1
            } else {
                itemsRedundancy[item] = 1
            }
            if let mostCommonItemFrequency = itemsRedundancy[mostCommonItem],
                let currentItemFrequency = itemsRedundancy[item] {
                if currentItemFrequency > mostCommonItemFrequency {
                    mostCommonItem = item
                }
            }
        }
        
        return mostCommonItem
    }
}


var colors = ["blue", "green", "orange", "blue", "white", "yellow", "blue", "red", "green", "orange", "purple", "blue", "black", "red", "red", "red", "red"]
let solution = Solution()
solution.mostCommonElement(colors)
