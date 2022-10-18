import Foundation

struct MyStructure {
  let instanceProperty = "ABC"
  static let typeProperty = "123"
}

let myStructure = MyStructure()

print(myStructure.instanceProperty)
print(MyStructure.typeProperty)
