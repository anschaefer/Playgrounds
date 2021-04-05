import UIKit

func fibonacciIterative(until n: Int) -> Int{
    var num1 = 0
    var num2 = 1
    var res = 0
    
    if n == 1 || n == 2 {
        return 1
    } else {
        for _ in 0..<n - 1  {
            res = num1 + num2
            num1 = num2
            num2 = res
        }
        return res
    }
}

func fibonacciRecursive(until n: Int) -> Int {
    if n == 1 || n == 2 {
        return 1
    } else {
        return fibonacciRecursive(until: n - 1) + fibonacciRecursive(until: n - 2)
    }
}

fibonacciIterative(until: 6)
fibonacciRecursive(until: 6)
