
let numberOfDaysInMonth = 30
var numberOfWorkouts = 0
var minutesOfWorkouts = 0
var activity = (steps: 1284, walkingDistance: 1.2, runningDistance: 0.0)

// WHILE LOOPS

while activity.walkingDistance + activity.runningDistance <= 5.0 {
    activity.runningDistance += 1.0
}
activity.runningDistance

repeat {
    activity.runningDistance += 1.0
} while activity.walkingDistance >= activity.runningDistance
activity.runningDistance

// FOR LOOPS

for day in 1...numberOfDaysInMonth where day % 3 == 1 {
    numberOfWorkouts += 1
}
numberOfWorkouts

for workout in 0..<numberOfWorkouts {
    minutesOfWorkouts += workout
}
minutesOfWorkouts

for _ in stride(from: 0, to: numberOfWorkouts, by: 1) {
    minutesOfWorkouts += 1
}
minutesOfWorkouts
