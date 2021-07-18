import UIKit

// 변수 & 상수
var name: String = "seok"
var age: Int = 100
var job = "iOS Programmer" // 타이ㅂ 추론이 사용되었다.
let height = 181.5 // 실수 타입에 타입 추론으로 어떤 타입이 지정되었는지 확인해봐라
// print("\(type(of: height))")
age = 99 //변수는 값을 변경해줄 수 있다.
job = "Writer" //값ㅇㅡㄹ 변경할 때는 기존과 같은 타입의 값을 할당해주어야 한다.
print("저의 이름은 \(name)이고, 나이는 \(age)세이며, 직업은 \(job)입니다. 비밀이지만, 키는 \(height)센티미터입니다.")


// Int & UInt
var integer: Int = -100
let unsignedInterger: UInt = 50 // UInt 타입에는 음수값을 할당할 수 없다.
print("integer 값: \(integer), unsignedInterger 값: \(unsignedInterger)")
print("Int 최댓값: \(Int.max), Int 최솟값: \(Int.min)")
print("UInt 최댓값: \(UInt.max), UInt 최솟값: \(UInt.min)")

// Bool
var boolean: Bool = true
boolean.toggle() // true - false 반전
let iLoveYou: Bool = true
let isTimeUnlimited: Bool = false
print("시간은 무한합니까?: \(isTimeUnlimited)")

// Float & Double
// Float이 수용할 수 있느 범위를 넘어섭니다.
// 자신이 감당할 수 있는 만큼만 남기므로 정확도가 떨어진다.
var floatValue: Float = 1234567890.1

// Double은 충분히 수용할 수 있다.
let doubleValue: Double = 1234567890.1

print("floatValue: \(floatValue) doubleValue: \(doubleValue)")

// Float이 수용할 수 있는 범위의 수로 변경합니다.
floatValue = 123456.1

// 문자열 보간법을 사용하지 않고 단순히 변수 또는 상수의 값만 보고 싶으면
// print 함수의 전달인자로 변수 또는 상수를 전달
print(floatValue)

// String
// 상수로 선언된 문자열은 변경이 불가능하다.

// 이니셜라이저를사용하여 빈 문자열을 생성할 수 있다.
// var 키워드를 사용하여 변수를 생성했으므로 문자열의 수정 및 변경이 가능하다.
var introduce: String = String()

// append() 메서드를 사용하여 문자열을 이어붙일 수 있다.
introduce.append("제 이름은")

// + 연산자를 통해서도 문자열을 이어붙일 수 있다.
introduce = introduce + "" + name + "입니다."
print(introduce)

// name에 해당하는 문자의 수를 셀 수 있습니다.
print("name의 글자 수: \(name.count)")
// 빈 문자열인지 확인해 볼 수 있다.
print("introduce가 비어있습니까?: \(introduce.isEmpty)")

// 유니코드의 스칼라값을 사용하면 값에 해당하는 표현이 출련된다.

let unicodeScalarValue: String = "\u{2665}"
// 연산자를 통한 문자열 결합
let hello: String = "Hello"
let seok: String = "seok"
var greeting: String = hello + " " + seok + "!"
print(greeting) // Hello seko!

greeting = hello
greeting += " "
greeting += "wooyoung"
greeting += "!"
print(greeting) // Hello wooyoung!

// 연산자를 통한 문자열 비교
var isSameString: Bool = false

isSameString = hello == "Hello"
print(isSameString) // true

isSameString = hello == "hello"
print(isSameString) // false

isSameString = seok == "seok"
print(isSameString) // true

isSameString = seok == hello
print(isSameString) // false
