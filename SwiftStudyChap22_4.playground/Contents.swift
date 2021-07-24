func swapTwoValues(_ a: inout Any, _ b: inout Any) {
    let temporaryA: Any = a
    a = b
    b = temporaryA
}
var anyOne: Any = 1
var anyTwo: Any = "Two"

swapTwoValues(&anyOne, &anyTwo)
print("\(anyOne), \(anyTwo)") // "Two" , 1
