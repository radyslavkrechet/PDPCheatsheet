
// ARRAYS

var classmates = [String]()
classmates += ["Debra", "Mike", "Mary", "Steve"]
classmates[1...2] = ["Carla"]
for classmate in classmates {
    print(classmate)
}

// DICTIONARIES

var marks = [String: Double]()
marks = ["Debra": 4.7, "Mike": 4.1, "Carla": 4.9]
marks["Steve"] = 4.8
marks["Mike"] = nil
for (classmate, mark) in marks {
    print("\(classmate) - \(mark)")
}
