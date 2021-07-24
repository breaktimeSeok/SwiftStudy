enum School: Int {
    case elementary = 1, middle, high, university
    
    static subscript(level: Int) -> School? {
        return Self(rawValue: level)
        // return School(rawVale: level)과 같은 표현이다.
    }
}

let school: School? = School[2]
print(school) //Optional(서브스크립트_Contents.School.middle)
