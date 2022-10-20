//19. Extensions and Default Implementations for Protocols
protocol CanFly {
  func fly()
}

extension CanFly {
  func fly() {
    print("I believe i can fly")
  }
}

struct Airplane: CanFly { // u dont have to call func fly because it have default implementation

}

let myAirplane = Airplane()
myAirplane.fly() // I believe i can fly
