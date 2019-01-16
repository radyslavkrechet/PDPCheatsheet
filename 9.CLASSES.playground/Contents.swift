
// CLASSES

class Car {
    var numberOfWheels: Int = 4
    
    var isNoisy: Bool {
        return true
    }
    
    required init(numberOfWheels: Int) {
        self.numberOfWheels = numberOfWheels
    }
    
    convenience init?(car: Car) {
        guard car.numberOfWheels > 0 else {
            return nil
        }
        
        self.init(numberOfWheels: car.numberOfWheels)
    }
    
    func characteristics() {
        print("Number of wheels: \(numberOfWheels)")
    }
}

class ElectricCar: Car {
    var battery: String
    
    override var isNoisy: Bool {
        return false
    }
    
    required init(numberOfWheels: Int) {
        self.battery = "6 kWh"
        
        super.init(numberOfWheels: numberOfWheels)
    }
    
    init(numberOfWheels: Int, battery: String) {
        self.battery = battery
        
        super.init(numberOfWheels: numberOfWheels)
    }
    
    override func characteristics() {
        super.characteristics()
        
        print("Battery: \(battery)")
    }
}

var car = Car(numberOfWheels: 4)
var electronicCar = ElectricCar(numberOfWheels: 3, battery: "10–12 kWh")

electronicCar as Car
car as? ElectricCar

car.isNoisy
electronicCar.isNoisy

car.characteristics()
electronicCar.characteristics()
