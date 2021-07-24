let string: String = "ABC"

switch string {
// ABC -> 어떤 값이 와도 상관없기에 항상 실행된다.
case _: print(string)
}

let optionalString: String? = "ABC"

switch optionalString {
// optinalString이 optional("ABC")일 때만 실행된다.
case "ABC"?: print(optionalString)

// optionalString이 Optional("ABC" 외의 값이 있을 때만 실행된다.
case _?: print("Has value, but not ABC")

// 값이 없을 때 실행된다.
case nil: print("nil")
} // Optional("ABC")

let seok = ("seok", 99, "Male")

switch seok {
// 첫 번째 요소가 "seok"일 때만 실행된다.
case("seok", _, _): print("Hello seok!!!!")

// 그 외 언제든지 실행된다.
case (_, _, _): print("Who cares~")
} // Helo seok!!!!

for _ in 0..<2 {
    print("Hi")
} // Hi Hi
