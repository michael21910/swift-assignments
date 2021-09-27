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