//9. Defining and Unwrapping Optionals

// var player1Username: String = nil // u can't do this, instead

var player1Username: String?
player1Username = "SijiaAfriani"
print(player1Username) // Optional("SijiaAfriani")
print(player1Username!) // Sijia Afriani

var player2Username: String?
player2Username = "Halida Husain"
player2Username = nil
print(player2Username) // nil

if player2Username != nil { // it will skip the line
  print(player2Username!)
}
