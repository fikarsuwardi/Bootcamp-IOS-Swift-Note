//7. Switch Statements
func dayOfTheWeek(day: Int) {
  //Write your code inside this function.
  switch day {
  case 1:
    print("Monday")
  case 2:
    print("Tuesday")
  case 3:
    print("Wednesday")
  case 4:
    print("Thursday")
  case 5:
    print("Friday")
  case 6:
    print("Saturday")
  case 7:
    print("Sunday")
  default:
    print("Error")
  }
}

dayOfTheWeek(day: 13)
