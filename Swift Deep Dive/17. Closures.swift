// 3 Type Function
// 1. Function Only Do Something without Input
func getMilk() {
  print("Do Something")
}

// 2. Function which take input
func sayHello(name: String) {
  print("Hello \(name)")
}

// 3. Function can do all that
func getMilk(money: Int) -> Int {
  let change = money - 5000
  return change
}

//17. Closures
// Step 1
func calculator (n1: Int, n2: Int) -> Int {
  return n1 * n2
}

func add (no1: Int, no2: Int) -> Int {
  return no1 + no2
}
// (Int, Int) -> Int // boil version

func multiply (no1: Int, no2: Int) -> Int {
  return no1 * no2
}

// change func multiply to closure
// step
//1. remove func and name of function
//2. move the right bracket to the beginning
//3. replace that bracket with in
//4. move it as a input paramatere

//example
//{ (no1: Int, no2: Int) -> Int in
//  return no1 * no2
//}

calculator(n1: 2, n2: 3)

// Step2
func calculator2 (n1: Int, n2: Int, operation: (Int, Int) -> Int) -> Int {
  return operation(n1, n2)
}

calculator2(n1: 2, n2: 3, operation: add) // 5
//calculator2(n1: 2, n2: 3, operation: multiply) // 6

// manggil closuer as a input parameter in operation
calculator2(n1: 2, n2: 3, operation: { (no1: Int, no2: Int) -> Int in
  return no1 * no2
})

// Penyedarhanaan
calculator2(n1: 2, n2: 3, operation: { (no1, no2) in no1 * no2 })

// Penyederhanaan 2 use anonymous parameter names
// $0 -> reverse first parameter
// $1 -> reverse second parameter and so on so forth

let result = calculator2(n1: 2, n2: 3, operation: {$0 * $1})
print(result) // 6

// Penyederhanaan 3
// if last parameter is closure u can do this, everything between curly bracket
let result2 = calculator2(n1: 2, n2: 3) {$0 * $1} // trailing closure
print(result2)

let array1 = [1,2,3,4,5,6]

func addOne (n1: Int) -> Int {
  return n1 + 1
}

array1.map(addOne)
print(array1.map{$0 + 1})

