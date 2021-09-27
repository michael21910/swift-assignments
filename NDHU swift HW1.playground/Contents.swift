// Student ID: 410821305
// Student Name: 薛祖恩
// Assignment: 1


// Q1
func getFactorial(_ num: Int) -> Double {
    // returns the factorial of the integer
    var output = 1.0
    for i in 1...num {
        output = output * Double(i)
    }
    return output
}

func getE(_ num: Int) -> Void {
    var output = 1.0
    // if the number is 1, just return 1
    if num == 1 {
        print("getE(" + String(num) + ") = 1")
        return
    }
    // calculate the function 'e'
    for i in 1..<num {
        output = output + Double(1 / getFactorial(i))
    }
    // if the number after calculation is an integer
    if output == Double(Int(output)) {
        print("getE(" + String(num) + ") = " + String(Int(output)))
        return
    }
    // if the number after calculation is not an integer
    print("getE(" + String(num) + ") = " + String((output * 10000.0).rounded() / 10000.0))
    return
}

// testing output of Q1
print("Test the output of Q1:")
for i in 1...5 {
    getE(i)
}
print()


// Q2
func gradeLevel(_ scores: [Int]) -> Void {
    var aScoreCount = 0, bScoreCount = 0, cScoreCount = 0
    for score in scores {
        if 80 <= score && score <= 100 {
            aScoreCount = aScoreCount + 1
            continue
        }
        else if 60 <= score && score <= 79 {
            bScoreCount = bScoreCount + 1
            continue
        }
        else if 0 <= score && score <= 59 {
            cScoreCount = cScoreCount + 1
            continue
        }
    }
    print("A:", aScoreCount)
    print("B:", bScoreCount)
    print("C:", cScoreCount)
}

// testing output of Q2
print("Test the output of Q2:")
gradeLevel([80, 90, 75, 50])
print()


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

// End of assignment 1
