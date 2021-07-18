import UIKit

// if  구문
let first: Int = 5
let second: Int = 5
var biggerValue: Int = 0

if (first > second) { // 조건 수식을 소괄호로 묶어 주는 것은 선택 사항이다.
    biggerValue = first
}else if (first == second) {
    biggerValue = first
}else if (first < second){
    biggerValue = second
}else if (first == 5){
    // 조건을 충족하더라도 이미 first == second라는 조건을 충족해서 위에서 실행되었다.
    // 따라서 실행안됨
    biggerValue = 100
}
// 마지막 else는 생략 가능, 물론 else if도 생략 가능
// 즉, else나 else if 없이 if만 단독으로 사용가능

print(biggerValue)

// switch 구문
let integerValue: Int = 5

switch integerValue {
case 0: // 1️⃣
    print("Value == zero")
case 1...10: // 2️⃣
    print("Value == 1~10")
    fallthrough
case Int.min..<0, 101..<Int.max: // 3️⃣
    print("Value < 0 or Value > 100")
    break
default:
    print("10 < Value <= 100")
}

// 결과
// Value == 1~10
// Value < - or Value > 100

// for 반복문
for i in 0...2 {
    print(i)
}

for i in 0...5 {
    if i.isMultiple(of: 2) {
        print(i)
        continue // continue 키워드를 사용하면 바로 다음 시퀀스로 건너뛴다.
    }
    print("\(i) == 홀수")
}

let helloSwitft: String = "Hello Swift!"
for char in helloSwitft {
    print(char)
}

var result: Int = 1

// 시퀀스에 해당하는 값이 필요 없다면 와일드카드 식별자(_)를 사용하면 된다.
for _ in 1...3 {
    result *= 10
}
print("10의 3제곱은 \(result)입니다.")

// while 반복문
var names: [String] = ["Joker", "Jenny", "Nova", "seok"]

while names.isEmpty == false {
    print(" Good bye \(names.removeFirst())")
    // removeFirst()는 요소를 삭제함과 동시에 요소를 반환한다.
}
// repaet - while 반복문
var names2: [String] = ["Joker", "Jenny", "Nova", "seok"]
repeat {
    print("Good bye \(names2.removeFirst())")
    // removeFirst()는 요소를 삭제함과 동시에 요소를 반환한다.
} while names2.isEmpty == false
