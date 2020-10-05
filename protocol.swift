protocol GeometricObject {
    var shapeName: String  {get set}    //Name of the shape
    var sides: Int {get set}        // Number of sides of the shape
}

protocol Colorable: GeometricObject {       //Colorable protocol inherits GeometricObject protocol
    var isColorable: Bool {get set}     // Variable to check if the shape is colorable
}

extension Colorable {       // Contains the function part of the Colorable protocol  
    func howToColor() -> Void {}    //Void function 
}

class Square: Colorable {       // Class square implements the Colorable protocol 
    var shapeName: String
    var sides: Int
    var isColorable: Bool
    var color: String       // Stores the color that should be used to color that shape
    func howToColor() {     // Function to display a message about color of the square
            if (isColorable) {
                print("The color of the square is : \(self.color) ")
            } else {
                print("The shape is not colorable. ")
            }
        }
    
    init(){     //default initialization
        shapeName = "Square"
        sides = 4
        isColorable = true
        color = "Yellow"
    }
    
    
    init(isColorable:Bool, color:String){       // Can be used to define custom color of the shape or to make it non-colorable
        self.shapeName = "Square"
        self.sides = 4
        self.isColorable = isColorable
        self.color = color
    }
}
var shape = Square()        //colorable shape with default values
var shape2 = Square(isColorable:false, color:"")        //non-colorable shape
shape.howToColor()
shape2.howToColor()