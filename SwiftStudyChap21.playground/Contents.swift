extension Int {
    var isEven: Bool {
        return self % 2 == 0
    }
    var isOdd: Bool {
        return self % 2 == 1
    }
}

print(1.isEven) // false
print(2.isEven) // true
print(1.isOdd) // true
print(1.isEven) // false

var number: Int = 3
print(number.isEven) // false
print(number.isOdd) // true
