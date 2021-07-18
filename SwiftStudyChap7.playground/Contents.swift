import UIKit

func hello(name: String) -> String {
    return "Hello \(name)!"
}

let helloJenny: String = hello(name: "Jenny")
print(helloJenny)

func introduce(name: String) -> String {
    // [return "제 이름은 " + name + "입니다."]와 같은 동작을 합니다.
    "제 이름은 " + name + "입니다."
}

let introduceJenny: String = introduce(name: "Jenny")
print(introduceJenny)

func helloWorld() -> String {
    return "Hello, world!"
}

print(helloWorld()) //Hello, world!

func sayHello(myName: String, yourName: String) -> String {
    return "Hello \(yourName)! I'm \(myName)"
}

print(sayHello(myName: "Seok", yourName: "young")) //Hello young! I'm Seok

// from과 to라는 전달인자 레이블이 있으며
// myName과 name이라는 매개변수 이름이 있는 sayHello 함수

func sayHello(from myName:String, to name: String) -> String{
    return "Hello \(name)! I'm \(myName)"
}

print(sayHello(from: "Seok", to: "Jun")) //Hello Jun! I'm Seok

// times 매개변수가 기본값 3을 갖는다.
func sayHello(_ name: String, times: Int = 3) -> String {
    var result: String = ""
    
    for _ in 0..<times {
        result += "Hello \(name)!" + " "
    }
    return result
}
// times 매개변수의 전달 값을 넘겨주지 않아 기본값 3을 반영해 세 번 출력
print(sayHello("Hana"))

// times 매개변수의 전달 값을 2로 넘겨주었기 때문에 전달 값을 반영해 두 번 출력
print(sayHello("Seok", times: 2))

func saytHelloToFriends(me: String, friends names: String...) -> String {
    var result: String = ""
    
    for friend in names {
        result += "Hello \(friend)!" + " "
        
    }
    result += "I'm " + me + "!"
    return result
}

print(saytHelloToFriends(me: "seok", friends: "wooyoung","hyunjun","jaeseok"))

print(saytHelloToFriends(me: "seok"))

var numbers: [Int] = [1, 2, 3]

func nonReferenceParameter(_ arr: [Int]) -> Int {
    var copiedArr: [Int] = arr
    var result: Int
    copiedArr[1] = 1
    result = copiedArr[1]
    return result
}

func referenceParameter(_ arr: inout [Int]) {
    arr[1] = 1
}

nonReferenceParameter(numbers)
print(numbers[1]) //2
print(nonReferenceParameter(numbers)) // 1

referenceParameter(&numbers) // 참조를 표현하기 위해 &를 붙여준다.
print(numbers[1]) // 1

// 반환이 없는 함수
func sayHelloWorld() {
    print("Hello, world!")
}
sayHelloWorld()

func sayHello2(from myName: String, to name: String) {
    print("Hello \(name)! I'm \(myName)")
}

sayHello2(from: "seok", to: "Jun")

func sayGoodbye() -> Void { // Void를 명시해주어도 상관없다.
    print("Good bye")
}

sayGoodbye()

// 중첩함수
typealias MoveFunc = (Int) -> Int
func functionForMove(_ shouldGoLeft: Bool) -> MoveFunc{
    func goRight(_ currentPosition: Int) -> Int {
        return currentPosition + 1
    }
    
    func goLeft(_ currentPosition: Int) -> Int {
        return currentPosition - 1
    }
    return shouldGoLeft ? goLeft: goRight // 삼항 연산자 조건 shouldGoLeft가
    // 참이면 goLeft, 거짓이면 goRight를 반환
}

var position: Int = -4 // 현 위치

// 현 위치가 0보다 작으므로 전달되는 인자 값은 false가 된다.
// 그러므로 goRightt(_:) 함수가 할당될 것이다.
let moveTozero: MoveFunc = functionForMove(position > 0)
print("원점으로 갑시다.")

// 원점에 도착하면 (현 위치가 0이면) 반복문이 종료된다.
while position != 0 {
    print("\(position)...")
    position = moveTozero(position)
}
print("원 점 도착!")
