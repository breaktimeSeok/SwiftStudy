extension Int {
    func multiply(by n: Int) -> Int {
        return self * n
    }
    mutating func multiplySelf(by n: Int) {
        self = self.multiply(by: n)
    }
    
    static func inIntTypeInstance(_ instance: Any) -> Bool {
        return instance is Int
    }
}

print(3.multiply(by: 2)) //6
print(4.multiply(by: 5)) // 20

var number: Int = 3

number.multiply(by: 2)
print(number) // 6

number.multiply(by: 3)
print(number) // 18

prefix operator ++
struct Position {
    var x: Int
    var y: Int
}

extension Position {
    // +중위 연산 구현
    static func + (left: Position, right: Position) -> Position {
        return Position(x: left.x + right.x , y: left.y + right.y)
    }
    
    // - 전위 연산 구현
    static prefix func - (vector: Position) -> Position {
        return Position(x: -vector.x , y: -vector.y)
    }
    
    // +=  복합할당 연산 구현
    static func += (left: inout Position, right: Position) {
        left = left + right
    }
}

extension Position {
    // ++ 사용자 정의 연산자 구현
    static prefix func ++ (position: inout Position) -> Position {
        position.x += 1
        position.y += 1
        return position
    }
}



var myPosition: Position = Position(x:10, y:10)
var yourPosition: Position = Position(x:-5, y:-5)

print(myPosition + yourPosition) // Position(x:5 y:5)
print(-myPosition) // Position(x:-10, y:-10)
myPosition += yourPosition // Position(x:5 y:5)
print(++myPosition) //Position(x: 6, y: 6)
