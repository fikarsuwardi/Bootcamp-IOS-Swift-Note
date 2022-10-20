class Dragon: Enemy {
  var wingsSpan = 5
  
  func speach() {
    print("Dragon breath hurraaaaaaaaaa.....")
  }
  
  func talk(say: String) {
    print("\(say)")
  }
  
  override func move() {
    print("Fly forwards...")
  }
  
  override func attack() {
    super.attack() // to keep the func before
    print("Spit fire, does 10 damage")
  }
}
