class Person {
    var name: String = ""
    var age: Int = 0
    
    var introduction: String {
        return "이름: \(name). 나이: \(age)"
    }
    func speak() {
        print("hello")
    }
    
    class func introduceClass() -> String {
        return "인류의 소원은 평화이다."
    }
}

class Student: Person {
    var grade: String = "F"
    
    func study() {
        print("Study hard...")
    }
    override func speak() {
        print("I'm Student")
    }
}

class UniversityStudent: Student{
    var major: String = ""
    
    class func introduceClass() {
        print(super.introduceClass())
    }
    
    override class func introduceClass() -> String {
        return "대학생의 소원은 A+이다."
    }
    
    override func speak() {
        super.speak()
        print("I'm university Student")
    }
}

let seok: Person = Person()
seok.speak() // hello

let jun: Student = Student()
jun.speak() //I'm Student

let jenny: UniversityStudent = UniversityStudent()
jenny.speak() //I'm university Student

print(Person.introduceClass())
print(Student.introduceClass())
print(UniversityStudent.introduceClass() as String)
