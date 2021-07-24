let (a): Int = 2
print(a) // 2

let (x, y): (Int, Int) = (1, 2)
print(x) // 1
print(y) // 2

let name: String = "Yun"
let age: Int = 99
let gender: String? = "Male"

switch (name, age, gender) {
case ("Yun", _, _): print("Hello Yun!!")
case (_, _, "Male"?): print("Who are you man?")
default: print("I don't know who you are")
} // Hello Yun!!

let points: [(Int, Int)] = [(0,0), (1,0), (1,1), (2,0), (2,1)]

for (x, _) in points {
    print(x)
}

/*
 
 0
 1
 1
 2
 2
 
 */
