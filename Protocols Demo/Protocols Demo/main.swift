//16. Protocols
protocol CanFly {
  func fly()
}

class Bird {
  var isFemale = true
  func layEgg() {
    if isFemale {
      print("The bird makes a new bird in a shell")
    }
  }
}

class Eagle: Bird, CanFly {
  func fly() {
    print("The eagles flaps its wings and lifts off into the sky.")
  }
  
  func soar() {
    print("The eagle glides in the air using air currents")
  }
}

class Pinguin: Bird {
  func swim() {
    print("The pinguin paddles through the water")
  }
}

struct FlyingMuseum {
  func flyingDemo(flyingObject: CanFly) {
    flyingObject.fly()
    print("museum can fly")
  }
}

struct Airplane: CanFly {
  func fly() {
    print("The airplane uses its engine to lift off into the air")
  }
}

let myEagle = Eagle()
myEagle.layEgg()
myEagle.fly()
myEagle.soar()

let myPenguin = Pinguin()
myPenguin.swim()

let myPlane = Airplane()
myPlane.fly()

let museum = FlyingMuseum()
//museum.flyingDemo(flyingObject: myPenguin) // error cause pingun doesnt have CanFly protocol
museum.flyingDemo(flyingObject: myEagle)
