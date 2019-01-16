
var activity = (steps: 1284, walkingDistance: 1.2, runningDistance: 0.0)

// CLOSURES

let motivation: () -> Void = {
    print("Just do it.")
}
motivation()

let activityDetail: (Double, Double) -> String
activityDetail = { (walkingDistance, runningDistance) in
    return "Daily walking distance: \(walkingDistance) km\nDaily running distance: \(runningDistance) km"
}
activityDetail(activity.walkingDistance, activity.runningDistance)

let addSteps = {
    activity.steps += 200
}
addSteps()
activity.steps
