import Foundation

class Program {
    func sortedSquaredArray(_ array: [Int]) -> [Int] {
        
        var mostLeftIndex = 0
        var mostRightIndex = array.count - 1
        var resultList = Array(repeating: 0, count: array.count)
        var resultIndex = resultList.count - 1
        
        while resultIndex > -1 {
            
            var mostLeftElement = abs(array[mostLeftIndex])
            var mostRightElement = abs(array[mostRightIndex])
            var biggerElement = max(mostLeftElement, mostRightElement)
            
            if mostLeftElement > mostRightElement {
                mostLeftIndex += 1
            } else {
                mostRightIndex -= 1
            }
            biggerElement *= biggerElement
            
            resultList[resultIndex] = biggerElement
            resultIndex -= 1
        }
        
        
        return resultList
    }
}


let program = Program()
program.sortedSquaredArray([1, 2, 3, 5, 6, 8, 9])

