import UIKit

// 저장 프로퍼티
//좌표
struct CoordinatePoint {
    var x: Int //저장 프로퍼티
    var y: Int //저장 프로퍼티
    /*
     대칭점을 구하는 메서드 - 접근자
     Self는 타입 자기 자신을 뜻한다.
     Self 대신 CoordinatePoinst를 사용해도 된다.
     */
    func oppositePoint() -> Self {
        return CoordinatePoint(x: -x, y: -y)
    }
    /*
     대칭점을 설정하는 메서드 - 설정자
     mutating 키워드에 관한 내용은 뒤에 다룬다.
     */
    
    mutating func setOppositePoint(_ opposite: CoordinatePoint) {
        x = -opposite.x
        y = -opposite.y
    }
}

var seokPosition: CoordinatePoint = CoordinatePoint(x: 10, y: 20)

// 현재 좌표
print(seokPosition)

//대칭 좌표
print(seokPosition.oppositePoint())

//대칭 좌표를 (15, 10)으로 설정하면
seokPosition.setOppositePoint(CoordinatePoint(x: 15, y: 10))
//현재 좌표는 (-15, -10)으로 설정된다.
print(seokPosition)

struct Person {
    let name: String
    let nickname: String?
    let age: Int
    
    var isAdult: Bool {
        return age > 18
    }
}
// 키경로
let seok: Person = Person(name: "seok", nickname: "bear", age: 100)
let junhun: Person = Person(name: "junhun", nickname: "boogie", age: 100)
let happy: Person = Person(name: "happy", nickname: nil, age: 15)

let friend: [Person] = [seok, junhun, happy]
let names: [String] = friend.map(\.name)
let nicknames: [String]
    = friend.compactMap(\.nickname)
let adults: [String] = friend.filter(\.isAdult).map(\.name)

// 메서드 & 인스턴스 메서드
class LevelClass {
    //현재 레벨을 저장하는 프로퍼티
    var level: Int = 0{
        // 프로퍼티 값이 변경되면 호출하는 프로퍼티 감시자
        didSet {
            print("Level \(level)")
        }
    }
    
    //레벨이 올랐을 때 호출할 메서드
    func levelUp(){
        print("Level Up!")
        level += 1
        
    }
    
    // 레벨이 감소했을 때 호출할 메서드
    func levelDown() {
        print("Level Down")
        level -= 1
        if level < 0 {
            reset()
        }
    }
    
    // 특정 레벨로 이동할 때 호출할 메서드
    func jumpLevel(to: Int) {
        print("Jump to \(to)")
        level = to
    }
    
    //레벨을 초기화할 때 호출할 메서드
    func reset(){
        print("Reset!")
        level = 0
        
    }
}

var levelClassInstance: LevelClass = LevelClass()
levelClassInstance.levelUp()
levelClassInstance.levelDown()
levelClassInstance.levelDown()
levelClassInstance.jumpLevel(to: 3)

/*

Level Up!
Level 1
Level Down
Level 0
Level Down
Level -1
Reset!
Level 0
Jump to 3
Level 3

*/

// 인스턴스를 함수처럼 호출하도록 하는 메서드
struct Puppy {
    var name: String = "멍멍이"
    
    func callAsFunction() {
        print("멍멍")
    }
    func callAsFunction(destination: String) {
        print("\(destination)(으)로 달려간다.")
    }
    func callAsFunction(something: String, times: Int){
        print("\(something)(을)를 \(times)번 반복한다.")
    }
    func callAsFunction(color: String) -> String {
        return "\(color) 응가"
    }
    mutating func callAsFunction(name: String) {
        self.name = name
    }
}

var doggy: Puppy = Puppy()
doggy.callAsFunction()
doggy()
doggy.callAsFunction(destination: "home")
doggy.callAsFunction(destination: "office")
doggy.callAsFunction(something: "재롱부리기", times: 3)
print(doggy(color: "무지개색"))
doggy(name:"댕댕이")
print(doggy.name)
