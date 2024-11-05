import Foundation


/// This algorithm is depending on the Recursion. since we are splitting / chopping the array into
/// two halves and calling the function again, till we reach to the base condition.
///

func mergeSort(_ list:[Int]) -> [Int] {
    // Base condition; If the list contains single element, just return it.
    guard list.count > 1 else { return list }
    
    // split the list into two halves, left and right
    var leftSide = Array(list[0..<list.count / 2])
    var rightSide = Array(list[(list.count/2)..<list.count])
    
    func merge(_ left: [Int], _ right: [Int]) -> [Int] {
        var left = left
        var right = right
        var sorted = [Int]()
        
        while !left.isEmpty && !right.isEmpty {
            // compare
            if left.first! < right.first! {
                sorted.append(left.removeFirst())
            } else {
                sorted.append(right.removeFirst())
            }
        }
        return sorted + left + right
    }
    
    return merge(mergeSort(leftSide), mergeSort(rightSide))
}



var unsortedList = [35, 40, 50, 20, 80, 90, 45, 10]
mergeSort(unsortedList)

