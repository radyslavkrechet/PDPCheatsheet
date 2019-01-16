
// NUMBERS

let numberOfMonthsInYear = 12
let numberOfMonths = 256.5
let age = Int(numberOfMonths) / numberOfMonthsInYear

// STRINGS

let exclamationMark: Character = "!"
var greeting = "Hello"
greeting += String(exclamationMark)

let name = "Steve"
let bio = "\(greeting) My name is \(name). I'm \(age)."

// TUPLES

var activity = (steps: 1284, 1.2, 0.0)
activity.steps += 200

let walkingDistance = activity.1
let (_, _, runningDistance) = activity
