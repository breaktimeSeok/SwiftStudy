struct Student {
    var name: String
    var number: Int
}

class School {
    var number : Int = 0
    var students: [Student] = [Student]()
    
    func addStudent(name: String) {
        let student: Student = Student(name: name, number: self.number)
        self.students.append(student)
        self.number += 1
    }
    func addStudents(names: String...) {
        for name in names {
            self.addStudent(name: name)
        }
    }
    subscript(index: Int) -> Student? { // 첫 번째 서브 스크립트
        get {
            if index < self.number {
                return self.students[index]
            }
            return nil
        }
        set {
            guard var newStudent: Student = newValue else {
                return
            }
            var number: Int = index
            
            if index > self.number {
                number = self.number
                self.number += 1
            }
            newStudent.number = number
            self.students[number] = newStudent
        }
    }
    
    subscript(name: String) -> Int? { // 두 번째 서브스크립트
        get {
            return self.students.filter { $0.name == name }.first?.number // 단축인자 $
        }
        set {
            guard var number: Int = newValue else {
                return
            }
            if number > self.number {
                number = self.number
                self.number += 1
            }
            
            let newStudent: Student = Student(name: name, number: number)
            self.students[number] = newStudent
        }
    }
    subscript(name: String, number: Int) -> Student? { // 세 번째 서브스크립트
        return self.students.filter{ $0.name == name && $0.number == number }.first
    }
}

let highSchool: School = School()
highSchool.addStudents(names: "seok", "jun", "young", "hyun","jae")

let aStudent: Student? = highSchool[1]
print("\(aStudent?.number) \(aStudent?.name)") //Optional(1)

print(highSchool["seok"]) // Optional(0)
print(highSchool["jieun"]) // nil
highSchool[0] = Student(name:"peter", number: 0)
highSchool["stone"] = 1

print(highSchool["jun"]) //nil
print(highSchool["stone"]) // Optional(1)
print(highSchool["hyun", 3]) //Optional(서브스크립트_Contents.Student(name: "hyun", number: 3))
print(highSchool["heejun", 3]) //nil
