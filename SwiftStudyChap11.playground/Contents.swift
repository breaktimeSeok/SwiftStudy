import UIKit

// 인스턴스 생성
class SomeClass {
    init() {
        // 초기화할 때 필요한 코드
    }
}

struct SomeStruct {
    init() {
        //초기화할 때 필요한 코드
    }
}

enum SomeEunm {
    case someCase
    
    init() {
        //열거형은 초기화할 때 반드시 case 중 하나가 되어야 한다.
        self = .someCase
        //초기화할 때 필요한 코드
    }
}

struct Area {
    var squareMeter: Double
    
    init() {
        squareMeter = 0.0 // squareMeter의 초깃값 할당
    }
}

let room: Area = Area()
print(room.squareMeter) // 0.0

//옵셔널 프로퍼티 타임
class Person {
    var name: String
    var age: Int?
    
    init(name: String) {
        self.name = name
    }
}

let seok: Person = Person(name: "seok")
print(seok.name) // seok
print(seok.age) // nil

seok.age = 100
print(seok.age) // 100

seok.name = "Peter"
print(seok.name) // Peter

//기본 이니셜라이저와 멤버와이즈 이니셜라이저
struct Point {
    var x: Double = 0.0
    var y: Double = 0.0
}

struct Size {
    var width: Double = 0.0
    var height: Double = 0.0
}

let point: Point = Point(x: 0, y: 0)
let size: Size = Size(width: 50.0, height: 50.0)

//구조체의 저장 프로퍼티에 기본값이 있는 경우
//필요한 매개변수만 사용하여 초기화할 수도 있다.
let somePoint: Point = Point()
let someSize: Size = Size(width: 50)
let anotherPoint: Point = Point(y: 100)
