// 15. Optional Binding, Chaining, and the Nil Coalescing Operator
1. Force Unwrapping
optional!

2. Check for nil value
if optional != 0 {
  optional!
}

3. Optional binding
if let safeOptional = optional {
  safeOptional
}

4. Nil Coalescing Operator
optional ?? default value

5. Optional Chaining
optional?.property
optional?.method()

// --------------------

let myOptional: String?

myOptional = "Amma"

//let text: String = myOptional // it will be error, instead
if myOptional != nil {
  let text: String = myOptional!
} else {
  print("myOptional is nil :(")
}

// Optional binding -> better always use this
if let safeOptional = myOptional {
  print(safeOptional)
}

let wife: String?
wife = nil
let text: String = wife ?? "dwi"
print(text)

// Optional Chaining
struct MyOptional {
  var property = 123
  func method() {
    print("Iam struct method")
  }
}

let myOptional2: MyOptional?
//myOptional2 = MyOptional()
myOptional2 = nil

print(myOptional2?.property) // nil
