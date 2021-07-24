prefix operator **

prefix func ** <T: BinaryInteger> (value: T) -> T {
    return value * value
}

let minusFive = -5
let five: UInt = 5

let sqrtMinusFive: Int = **minusFive
let sqrtFive: UInt = **five


print(sqrtMinusFive) //25
print(sqrtFive) // 25
