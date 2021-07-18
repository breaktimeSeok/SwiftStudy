import UIKit

// 타입별칭
typealias MyInt = Int
typealias YourInt = Int
typealias MyDouble = Double

let age: MyInt = 100 // MyInt 는 Int의 또 다른 이름이다.
var year: YourInt = 2080 // YourInt도 Int의 또다른 이름이다.

// MyInt도, YourInt도 Int이기 때문에 같은 타입으로 취급한다.
year = age
let month: Int = 7 //물론 기존의 Int도 사용 가능하다.
let precentage: MyDouble = 99.9 // Int 외에 다른 자료형도 모두 별칭 사용 가능

//튜플
// String, Int, Double 타입을 갖는 튜플
var person: (String, Int, Double) = ("Seok", 30, 180.6)

// 인덱스를 통해서 값을 빼 올 수 있다.
print("이름: \(person.0), 나이: \(person.1), 신장: \(person.2)")

person.1 = 99 // 인덱스를 통해 값을 할당할 수 있다.
person.2 = 178.5

print("이름: \(person.0), 나이: \(person.1), 신장: \(person.2)")


// String, Int, Double 타입을 갖는 튜플
var person2: (name: String, age: Int, height: Double) = ("Seok", 30, 180.6)

// 요소를 통해서 값을 빼 올 수 있다.
print("이름: \(person2.name), 나이: \(person2.age), 신장: \(person2.height)")

person2.age = 99 // 요소 이름을 통해 값을 할당할 수 있다.
person2.2 = 178.5 // 인덱스를 통해 값을 할당할 수 있다.

// 기존처럼 인덱스를 이용하여 값을 빼 올 수도 있다.
print("이름: \(person2.0), 나이: \(person2.1), 신장: \(person2.2)")

typealias PersonTuple = (name: String, age: Int, height: Double)

let seok: PersonTuple = ("seok", 100, 180.6)
let young: PersonTuple = ("yong", 150, 181.2)

print("이름: \(seok.name), 나이: \(seok.age), 신장: \(seok.height)")
print("name: \(young.name), age: \(young.age), height: \(young.height) ")

// 배열
// 대괄호를 사용하여 배열임을 표현한다. 1️⃣
var names: Array<String> = ["seok", "chu", "yong", "seok"]

// 위 선언과 정확히 돌일한 표현이다. [String]은 Array<String>의 축약 표현이다.
// var names: [String] = ["seok", "chu", "yong", "seok"]

var emptyArray: [Any] = [Any]() // Any 데이터를 요소로 갖는 빈 배열을 생성한다.
// var emptyArray: [Any] = Array<Any>() // 위 선언과 정확히 같은 동작을 하는 코드이다.

// 배열의 타입을 정확히 명시해줬다면 []만으로도 빈 배열을 생성할 수 있다.
//var emptyArray: [Any] = []
print(emptyArray.isEmpty) // true
print(names.count) // 4

print(names[2]) // yong
names[2] = "jenny" //2️⃣
print(names[2]) // jenny
print(names[4]) // 인덱스의 범위를 벗아났기 때문에 오류 발생

names[4] = "elsa" // 인덱스의 범위를 벗어났기 때문에 오류 발생
names.append("elsa") // 마지막에 elsa 추가 3️⃣
names.append(contentsOf: ["john", "max"]) // 맨 마지막에 john과 max가 추가 4️⃣
names.insert("happy", at:2) // 인덱스 2에 삽입된다. 5️⃣
// 인덱스 5의 위치에 jinhee와 minsoo가 삽입된다 .6️⃣
names.insert(contentsOf: ["jinhee", "minsoo"], at:5)

print(names[4]) // seok
print(names.firstIndex(of: "seok")) //0
print(names.firstIndex(of: "christal")) // nii
print(names.first) // seok
print(names.last) // max

let firstItem: String = names.removeFirst() //7️⃣
let lastItem: String = names.removeLast() //8️⃣
let indexZeroItem: String = names.remove(at: 0) //9️⃣

print(firstItem) // seok
print(lastItem) // max
print(indexZeroItem) // chu
print(names[1 ... 3]) // ["jenny", "seok", "jinhee"]

// 딕셔너리
// typealias를 통해 조금 더 단순하게 표현해볼 수 있다.
typealias StringIntDictionary = [String: Int]

// 키는 String, 값으ㄴ Int 타이ㅂ인 빈 딕셔너리를 생성한다.
var numberForName: Dictionary<String, Int> = Dictionary<String, Int>()

// 위 선언과 같은 표현이다. [String: Int]는 Dictionary<String, Int>의 축약표현이다.
var numberForName2: StringIntDictionary = StringIntDictionary()

//딕셔너리의 키와 값 타입을 정확히 명시해 줬다면 [:]만으로도 빈 딕셔너리를 생성할 수 있다.
var numberForName3: [String: Int] = [:]

// 초기값을 주어 생성할 수 있다. 1️⃣
var numberForName4: [String: Int] = ["seok":100, "chu":200, "young":300]

print(numberForName4.isEmpty) // false
print(numberForName4.count) // 3

print(numberForName["chu"]) // 200
print(numberForName["soo"]) // nil

numberForName["chu"] = 150 // 2️⃣
print(numberForName["chu"]) // 150

numberForName["max"] = 999 // max라는 키로 999라는 값을 추가한다. 3️⃣
print(numberForName["max"]) // 999

print(numberForName.removeValue(forKey: "seok")) // 100 4️⃣

// 위에서 seok 키에 해당하는 값이 이미 삭제되었으므로 nil이 반환된다.
// 키에 해당하는 값이 없으면 기본값을 돌려주도록 할 수도 있다.
print(numberForName.removeValue(forKey: "seok"))

// seok 키에 해당하는 값이 없으면 기본으로 0이 반환된다.
print(numberForName["seok", default: 0]) // 0


// 열거형
enum School: String {
    case primary = "유치원"
    case elementray = "초등학교"
    case middle = "중학교"
    case high = "고등학교"
    case college = "대학"
    case university = "대학교"
    case graduate = "대학원"
}

let highestEducationLevel: School = School.university
print("저의 최종학력은 \(highestEducationLevel.rawValue) 졸업입니다.")
// 저의 최종학력은 대학교 졸업입니다.

enum WeekDays: Character {
    case mon = "월", tue = "화", wed = "수", thu = "목", fri = "금", sat = "토", sun = "일"
}

let today: WeekDays = WeekDays.fri
print("오늘은 \(today.rawValue)요일입니다.") //오늘은 금요일입니다.
