class Person {
    var name: String = ""
    var age: Int = 0
    var koreanAge: Int {
        return self.age + 1
    }
    
    var introduction: String {
        return "이름: \(name), 나이: \(age)"
    }
}

class Student: Person {
    var grade: String = "F"
    
    override var introduction: String {
        return super.introduction + " " + "학점 : \(self.grade)"
    }
    
    override var koreanAge: Int {
        get {
            return super.koreanAge
        }
        set {
            self.age = newValue - 1
        }
    }
}

let seok: Person = Person()
seok.name = "seok"
seok.age = 99
// seok.koreanAge = 100 // Error!!
print(seok.introduction) // 이름: seok, 나이: 99
print(seok.koreanAge) // 100


let jun: Student = Student()
jun.name = "jun"
jun.age = 14
jun.koreanAge = 15
print(jun.introduction) //이름: jun, 나이: 14 학점 : F
print(jun.koreanAge) //15
