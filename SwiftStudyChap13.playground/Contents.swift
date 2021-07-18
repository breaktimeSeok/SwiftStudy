import UIKit

// 기본 클로저
let names: [String] = ["seok","jun","young","hyun"]

func backwards(first: String, second: String) -> Bool {
    print("\(first) \(second) 비교중")
    return first > second
}

let reversed: [String] = names.sorted(by: backwards)
print(reversed)

// 값 획득
func makeIncrementer(forIncrement amount: Int) -> (() -> Int) {
    var runningTotal = 0
    func incrementer() -> Int {
        runningTotal += amount
        return runningTotal
    }
    return incrementer
}

let incrementByTwo: (() -> Int) = makeIncrementer(forIncrement: 2)

let incrementByTwo2: (() -> Int) = makeIncrementer(forIncrement: 2)

let incrementByTen: (() -> Int) = makeIncrementer(forIncrement: 10)


let first: Int = incrementByTwo() //2
let second: Int = incrementByTwo() //4
let third: Int = incrementByTwo() //6


let first2: Int = incrementByTwo2() //2
let second2: Int = incrementByTwo2() //4
let third2: Int = incrementByTwo2() //6


let ten: Int = incrementByTen() //10
let twenty: Int = incrementByTen() //20
let thirty: Int = incrementByTen() //30
