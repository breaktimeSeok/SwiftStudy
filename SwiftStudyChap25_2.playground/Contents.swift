let seok = ("seok", 99, "Male")

switch seok {
// name, age, gender를 seok의 각각의 요소와 바인딩한다.
case let (name, age, gender) : print("Name: \(name), Age: \(age), Gender: \(gender)")
}//Name: seok, Age: 99, Gender: Male

switch seok {
case (let name, let age, let gender) : print("Name: \(name), Age: \(age), Gender: \(gender)")
}//Name: seok, Age: 99, Gender: Male

switch seok {
// 값 바인딩 패턴은 와일드카드 패턴과 결합하여 유용하게 사용될 수도 있다.
case (let name, _, let gender): print("Name: \(name), Gender: \(gender)")
}//Name: seok, Gender: Male
