
let numberOfWorkouts = 15
let minutesOfWorkouts = 60
var activity = (steps: 1484, walkingDistance: 1.2, runningDistance: 0.0)

// FUNCTIONS

func print(name: String, lastname: String = "Jobs") -> Void {
    print(name + " " + lastname)
}
print(name: "Steve")

func dailyDistance(withWalking walkingDistance: Double, running runningDistance: Double) -> Double {
    return walkingDistance + runningDistance
}
dailyDistance(withWalking: activity.walkingDistance, running: activity.runningDistance)

func minutesOfWorkout(_ numberOfWorkouts: Int, _ minutesOfWorkouts: Int) -> (minutes: Int, coefficient: Double) {
    return (minutesOfWorkouts / numberOfWorkouts, Double(numberOfWorkouts) / Double(minutesOfWorkouts))
}
minutesOfWorkout(numberOfWorkouts, minutesOfWorkouts)

func addSteps(_ steps: inout Int) {
    steps += 200
}
addSteps(&activity.steps)
