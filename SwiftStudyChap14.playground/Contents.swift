import UIKit

// 옵셔널 체이닝
class Room { // 호실
    var number: Int //호실 번호
    
    init(number: Int) {
        self.number = number
    }
}

class Building { // 건물
    var name: String // 건물이름
    var room: Room? // 호실 정보
    
    init(name: String) {
        self.name = name
    }
}

struct Address { //주소
    var province: String // 광역시/도
    var city: String // 시/군/구
    var street: String // 도로명
    var building: Building? // 건물
    var detailAddress: String? // 건물 외 상세 주소
}

class Person {// 사람
    var name: String  // 이름
    var address: Address? //주소
    
    init(name: String){
        self.name = name
    }
}

let seok: Person = Person(name: "seok")

if let roomNumber: Int = seok.address?.building?.room?.number {
    print(roomNumber)
}else {
    print("Can not find room number")
}
seok.address?.building?.room?.number = 505
print(seok.address?.building?.room?.number) // nil

// 빠른종료
// if 구문을 사용한 코드
for i in 0...3 {
    if i == 2 {
        print(i)
    } else {
        continue
    }
}

// quard 구문을 사용한 코드
for i in 0...3 {
    guard i == 2 else {
        continue
    }
    print(i)
}

func greet(_ person: [String: String]) {
    guard let name: String = person["name"] else {
        return
    }
    
    print("Hello \(name)!")
    
    guard let location: String = person["location"] else {
        print("I hope the weather is nice near you")
        return
    }
    print("I hope the weather is nice in \(location)")
}

var personInfo: [String: String] = [String: String]()
personInfo["name"] = "seok"
greet(personInfo) // Hello seok!
//I hope the weather is nice near you

personInfo["location"] = "Korea"

greet(personInfo)
// Hello seok!
// I hope the weather is nice in Korea
