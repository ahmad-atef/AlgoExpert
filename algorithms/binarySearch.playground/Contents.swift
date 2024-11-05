import Foundation

/// Time: O(log-n), Space: O(1)
func binarySearch(_ list: [Int], _ item: Int) -> Int? {
    var low = 0
    var high = list.count - 1
    
    while low <= high {
        var mid = (low + high) / 2
        if list[mid] == item {
            return mid
        } else {
            if list[mid] < item {
                low = mid + 1
            } else {
                high = mid - 1
            }
        }
    }
    return nil
}

let list = [1, 3, 5, 7, 9]
binarySearch(list, 3)
binarySearch(list, -1)

