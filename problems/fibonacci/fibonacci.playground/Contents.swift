import Foundation

class Solution {
    func fibonacciRecursion(_ n: Int) -> Int {
        guard n > 1 else { return n }
        return fibonacciRecursion(n - 1) + fibonacciRecursion(n - 2)
    }
    
    func fibonacciIterative(_ n: Int) -> Int {
        if n < 2 {
            return n
        }
        
        var a = 0 // represents F(0) = 0
        var b = 1 // represents F(1) = 1
        
        for i in 2...n {
            var temp = a + b
            a = b
            b = temp
        }
        return b
    }
}


let solution = Solution()
solution.fibonacciRecursion(10)
