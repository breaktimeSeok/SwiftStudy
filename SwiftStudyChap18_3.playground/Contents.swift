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
class Student: Person {
    var grade: String = "F"
    
    func study() {
        print("Study hard...")
    }
}

class UniversityStudent: Student{
    var major: String = ""
}

let seok: Person = Person()
seok.name = "seok"
seok.age = 100
print(seok.introduction) //이름: seok. 나이: 100
seok.speak() // hello

let jun: Student = Student()
jun.name = "jun"
jun.age = 10
jun.grade = "A+"
print(jun.introduction) //이름: jun. 나이: 10
jun.speak() //hello
jun.study() //Study hard...

let jenny: UniversityStudent = UniversityStudent()
jenny.major = "Art"
jenny.study() //Study hard...
