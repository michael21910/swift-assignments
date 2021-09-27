// Q3
class Rectangle {
    var length: Int
    var width: Int
    
    init(length: Int, width: Int) {
        self.length = length
        self.width = width
    }
    
    // calculating perimeter of the rectangle
    var perimeter: Int {
        get {
            return 2 * (length + width)
        }
    }
    
    // calculating area of the rectangle
    var area: Int {
        get {
            return length * width
        }
    }
}

// testing output of Q3
print("Test the output of Q3:")
var rectangleA = Rectangle(length: 10, width: 20)
print("The perimeter of rectangleA is:", rectangleA.perimeter)
print("The area of rectangleA is:", rectangleA.area)