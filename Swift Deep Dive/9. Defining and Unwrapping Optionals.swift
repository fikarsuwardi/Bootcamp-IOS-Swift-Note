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

// Function to get highest score
func highestScore(scores: [String: Int]) {
  
  var score0: Int = 0
  //Write your code here.
  for score in scores.values {
    if score > score0 {
      score0 = score
    }
  }
  print(score0)
}

let studentsAndscores = ["Amy": 88, "James": 55, "Helen": 99]
highestScore(scores: studentsAndscores) // 99
