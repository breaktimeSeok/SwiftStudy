struct IntStack {
    var items = [Int]()
    mutating func push(_ item: Int){
        items.append(item)
    }
    mutating func pop() -> Int {
        return items.removeLast()
    }
}

var integerStack: IntStack = IntStack()

integerStack.push(3)
print(integerStack.items) // [3]

integerStack.push(2)
print(integerStack.items) // [3,2]

integerStack.push(3)
print(integerStack.items) // [3,2,3]

integerStack.push(5)
print(integerStack.items) // [3,2,3,5]

integerStack.pop()
print(integerStack.items) // [3,2,3]
