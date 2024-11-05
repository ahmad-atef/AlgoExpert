import Foundation


class Solution {
    // The peak element is an element which is bigger than its element before it and after it
    // [1, 2 , 1]: 2 is the peak element
    // [1,2,3,4,5,4]: 5 is the peak element
    // [1]: <1> is the peak element
    // [3,1]: <3> is the peak element
    
    func findPeakElement(_ array: [Int]) -> Int {
        // make sure the list has more than one number, else return 0 (index of the peak and only number)
        guard array.count > 1 else { return 0 }
        
        for i in 0..<array.count {
            // if at first and bigger than the next item 📈
            // if at last and bigger than previous item  📈
            // if at middle and bigger than previous and following item 📈
            
            if ( i == 0 || array[i] > array [i - 1]) && ( i == array.count - 1 || array[i] > array[i + 1]) {
                return i
            }
        }
        
        return -1
    }
    
    func findPeakElementBinarySearch(_ array: [Int]) -> Int {
        var leftIndex = 0
        var rightIndex = array.count - 1
        
        while leftIndex < rightIndex {
            var mid = (leftIndex + rightIndex) / 2
            if array[mid] > array[mid + 1] {
                rightIndex = mid
            } else {
                leftIndex = mid + 1
            }
        }
        return leftIndex
    }
}

let solution = Solution()
solution.findPeakElement([1, 3, 5, 7 , 10, 12, 6])
solution.findPeakElementBinarySearch([1, 3, 5, 7 , 10, 12, 6])
