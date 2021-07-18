import UIKit

// 삼항 연산자
var valueA: Int = 3
var valueB: Int = 5
var biggerValue: Int = valueA > valueB ? valueA : valueB // 5

valueA = 0
valueB = -3
// biggerValue = valueA > valueB > valueA : valueB // 0

var StringA: String = ""
var StringB: String = "String"
var resultValue: Double = StringA.isEmpty ? 1.0 : 0.0 // 1.0
// resultValue: StringB.isEmpty ? 1.0 : 0.0 // 0.0

// 전위연산자 구현
prefix operator **

prefix func ** (value: Int) -> Int {
    return value * value
}

let minusFive: Int = -5
let sqrtMinusFive: Int = **minusFive

print(sqrtMinusFive) // 25

// 후위 연산자 구현
postfix operator **
postfix func ** (value: Int) -> Int {
    return value + 10
}

let five: Int = 5
let fivePlusTen: Int = five**
print(fivePlusTen) // 15
