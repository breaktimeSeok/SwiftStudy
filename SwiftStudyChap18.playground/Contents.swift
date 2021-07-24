class Person {
    var name: String = ""
    var age: Int = 0
    
    var introduction: String {
        return "이름: \(name). 나이: \(age)"
    }
    func speak() {
        print("hello")
    }
}

let seok: Person = Person()
seok.name = "seok"
seok.age = 100
print(seok.introduction) //이름: seok. 나이: 100
seok.speak() // hello
