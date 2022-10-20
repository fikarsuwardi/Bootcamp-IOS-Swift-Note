//18. Internal and External Parameter Names

func myFunc1 (name eman: String) {
  print(eman)
}
// name = external parameter
// eman = internal parameter

myFunc1(name: "Sijia") // Sijia

// or
func myFunc2 (_ eman :String) {
  print(eman)
}
myFunc2("Afriani") // Afriani
