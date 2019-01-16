
// ENUMERATIONS

enum Mark: Int {
    case bad = 2, enough, good, great
}

var mark = Mark.good
mark = .great
mark.rawValue

enum Weather: String {
    case sunny, cloudy, windy, rainy, snowy
}

extension Weather {
    var forecast: String {
        return "It is \(rawValue) today."
    }
    
    static func wishes() {
        print("Wish a good day!")
    }
}

let weather = Weather.sunny
weather.rawValue
print(weather.forecast)
Weather.wishes()

enum Response {
    case success(count: Int)
    case error(code: Int)
}

let response = Response.error(code: 404)
guard case .error(let errorCode) = response else {
    fatalError()
}
