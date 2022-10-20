//19. Extensions and Default Implementations for Protocols
extension Double {
  func round(to places: Int) -> Double {
    let precisionNumber = pow(10, Double(places))
    var n = self
    n = n * precisionNumber
    n.round()
    n = n / precisionNumber
    return n
  }
}

var myDouble = 3.14159
myDouble.round(to: 1) // 3.1 and u dont have to call Double just round
