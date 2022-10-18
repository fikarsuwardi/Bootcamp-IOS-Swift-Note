// Constant
let name = "Sisi"
let age = 26

let intNumber = 123
let floatNumber = 12.345
let doubleNumber = 3.14159265359

// Random and Range Operator
// Random Int
let randomNumberInt = Int.random(in: 1...3)
print(randomNumberInt)
// Random Float
let randomNumberFloat = Float.random(in: 0...1)
print(randomNumberFloat)
//Random Bool
print(Bool.random())
// Random Array one item
let randomArray = [1,2,3,4,5]
print(randomArray.randomElement()!) // Using ! knowing I have array.count > 0
// or
if let randomElement = randomArray.randomElement() {
    print(randomElement)
}
// Random Array shuffled
print(randomArray.shuffled()) // [2, 1, 5, 3, 4]
