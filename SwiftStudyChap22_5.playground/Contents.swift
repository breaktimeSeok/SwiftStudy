func swapTwoValues<T>(_ a: inout T, _ b: inout T) {
    let temporaryA: T = a
    a = b
    b = temporaryA
}

var numberOne: Int = 5
var numberTwo: Int = 10

swapTwoValues(&numberOne, &numberTwo)
print("\(numberOne), \(numberTwo)") // 10, 5

var anyOne: Any = 1
var anyTwo: Any = "Two"

swapTwoValues(&anyOne, &anyTwo)
print("\(anyOne), \(anyTwo)") // "Two" , 1

var stringOne: String = "One"
var stringTwo: String = "Two"

swapTwoValues(&stringOne, &stringTwo)
print("\(stringOne), \(stringTwo)") // "Two", "One"
