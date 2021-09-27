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