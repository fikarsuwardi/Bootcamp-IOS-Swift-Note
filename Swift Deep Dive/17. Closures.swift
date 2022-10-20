3 Type Function
1. Function Only Do Something without Input
func getMilk() {
  print("Do Something")
}

2. Function which take input
func sayHello(name: String) {
  print("Hello \(name)")
}

3. Function can do all that
func getMilk(money: Int) -> Int {
  let change = money - 5000
  return change
}

