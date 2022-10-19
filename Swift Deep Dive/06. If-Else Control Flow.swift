//6. If-Else Control Flow
func isLeap(year: Int) {
  //Write your code inside this function.
  if year % 4 == 0 {
      if year % 100 != 0 {
          print("YES")
      } else {
          if year % 400 == 0 {
              print("YES")
          } else {
              print("NO")
          }
      }
  } else {
      print("NO")
  }
}

isLeap(year: 2024) // Yes ini tahun kabisat
