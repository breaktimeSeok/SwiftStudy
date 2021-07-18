import UIKit

// 구조체 생성
struct BasicInformation {
    var name: String
    var age: Int
}

// 클래스 생성과 초기화
class Person {
    var height: Float = 0.0
    var weight: Float = 0.0
}

var seok: Person = Person()
seok.height = 123.4
seok.weight = 123.4

let young: Person = Person()
young.height = 123.4
young.weight = 123.4

// 값 타입&참조타입
