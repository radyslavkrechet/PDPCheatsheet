
let numberOfDaysInMonth = 30
let numberOfWorkouts = 15
let activity = (steps: 1284, walkingDistance: 1.2, runningDistance: 0.0)

// IF STATEMENTS

if activity.walkingDistance + activity.runningDistance <= 5.0  {
    let neededActivity = activity.walkingDistance > activity.runningDistance ? "run" : "walk"
    "You need to \(neededActivity)"
}

// SWITCH STATEMENTS

switch numberOfWorkouts {
case 0:
    "poor"
case 1, 2, 3:
    "bad"
case 4...8:
    "good"
case let number where number <= numberOfDaysInMonth / 2:
    "great"
case _ where numberOfWorkouts <= numberOfDaysInMonth:
    "excellent"
default:
    "perfect"
}

switch activity {
case (0, 0.0, 0.0):
    "Time to morning jog."
case (_, 0, let runningDistance):
    "Morning jog distance: \(runningDistance) km"
case let (_, walkingDistance, runningDistance) where walkingDistance < runningDistance:
    "Daily running distance: \(runningDistance) km"
default:
    "Daily walking distance: \(activity.walkingDistance) km"
}
