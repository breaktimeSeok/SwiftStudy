import UIKit

// 옵셔널
var myName: String? = "seok"
print(myName) // seok
/*옵셔널 타입의 값을 print 함수를 통해 출력하면
Optional("seok")이라고 출력되는 것이 정상이다. 다만, 차후의 주석표현의 편의를 위하여
Optional()은 생략하고 값만 표기하도록 하겠다.
또, 옵셔널 타입의 값을 print 함수의 매개변수로 전달하면
컴파일러 경고가 발생할 수 있다. 정상이므로 놀라지 않아도 된다. */

myName = nil
print(myName) // nil

let string: String = "ABC"

switch string {
case _:
    print(string)
}

let optionalString: String? = "ABC"

switch optionalString {
case "ABC"?:
    print(optionalString) //optional("ABC")가 출력
case _?: //ABC빼고 나머지 값들
    print("이값은 ABC가 아님니다.")
case nil: // 값이 아예 없을때
    print("nil이니깐 값이 없습니다.")
}

let hoon = ("HOON",28,"male")

switch hoon {
case("HOON", _, _):
    print("It's HOON") //출력
case(_, _, _):
    print("아무나")
}

func checkOptionalValue(value optionalValue: Any?) {
    switch optionalValue {
    case .none:
        print("This Optional varialbe is nil")
    case .some(let value):
        print("Value is \(value)")
    }
}

var myName2: String? = "seok"
checkOptionalValue(value: myName) // value is seok

myName2 = nil
checkOptionalValue(value: myName2) // This Optional varialbe is nil

let numbers: [Int?] = [2, nil, -4, nil, 100]

for number in numbers {
    switch number {
    case .some(let value) where value < 0:
        print("Negative value!! \(value)")
    case .some(let value) where value > 10:
        print("Large value!! \(value)")
    case .some(let value):
        print("Value \(value)")
    case .none:
        print("nil")
    }
}
