protocol Gearbox {
    var gears : Int { get }
    var currentGear  : Int { get set }
}

class AutomaticVehicle: Gearbox {
    var gears : Int {
        return 10
    }
    var currentGear : Int = 0 
    var currentSpeed : Float = 0.0 {
        didSet {
            if (currentSpeed > 99){
                print("This speed is not possible. \nResetting current Gear.")
                currentGear = 0
            } else {
                currentGear = Int(currentSpeed/10) + 1 
            }
        }
    }
    
    init( currentSpeed: Float) {
        self.currentSpeed = currentSpeed
        if (currentSpeed > 99){
            print("This speed is not possible. \nResetting current Gear.")
        } else {
            self.currentGear = Int(currentSpeed/10) + 1 
        }
    }
}

var audiR8 = AutomaticVehicle(currentSpeed: 20)
print(audiR8.currentGear)
audiR8.currentSpeed = 90
print(audiR8.currentGear)
print(audiR8.gears)
// audiR8.gears = 11
// print(audiR8.gears)