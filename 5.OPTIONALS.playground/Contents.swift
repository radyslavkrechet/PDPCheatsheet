
let numberOfYears = 21

// OPTIONALS

var age: Int?
if age != nil {
    "I'm \(age!)."
}

age = age ?? numberOfYears
if let age = age {
    "I'm \(age)."
}

age = nil
func print(age: Int?) {
    guard let age = age else {
        return
    }
    "I'm \(age)."
}
print(age: age)

var hometown: String!
hometown = "San Francisco"
"I'm from \(hometown!)."
