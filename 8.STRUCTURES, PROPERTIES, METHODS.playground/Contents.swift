import Foundation

// STRUCTURES, PROPERTIES, METHODS

struct Activity {
    static let timeOfWorkout = 30
    
    var date: Date
    var walkingDistance: Double = 0.0
    var runningDistance: Double = 0.0

    var numberOfWorkouts: Int = 0 {
        willSet {
            "New number of workouts: \(newValue)"
        }
        didSet {
            "Old number of workouts: \(oldValue)"
        }
    }

    lazy var heartRate: [Int] = {
        return [Int]()
    }()
    
    var distance: Double {
        return walkingDistance + runningDistance
    }
    
    var minutesOfWorkouts: Int {
        get {
            return numberOfWorkouts * Activity.timeOfWorkout
        }
        set {
            numberOfWorkouts = newValue / Activity.timeOfWorkout
        }
    }
    
    static func motivation() {
        print("Just do it.")
    }
    
    func distanceDescription() {
        print("Distance: \(distance) km")
    }
    
    mutating func walk() {
        walkingDistance += 1.0
    }
    
    mutating func run() {
        runningDistance += 1.0
    }
    
    mutating func doWorkout() {
        numberOfWorkouts += 1
    }
}

extension Activity: CustomStringConvertible {
    var description: String {
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "yyyy-MM-dd"
        return "Acivity of \(dateFormatter.string(from: date))"
    }
    
    init() {
        date = Date()
    }
    
    func workoutDescription() {
        print("Number of workouts: \(numberOfWorkouts)")
        print("Minutes of workouts: \(minutesOfWorkouts)")
    }
}

var todayActivity = Activity()
print(todayActivity)
Activity.motivation()

todayActivity.walk()
todayActivity.heartRate += [78]
todayActivity.run()
todayActivity.heartRate += [116]
todayActivity.doWorkout()
todayActivity.heartRate += [98]

todayActivity.distanceDescription()
todayActivity.workoutDescription()
print("Heart rate: \(todayActivity.heartRate) bpm")
