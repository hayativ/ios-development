import Foundation

//Get data from input
func gradeCalculatorInput() {
    print("Write number of students: ", terminator: "")
    guard let n = Int(readLine() ?? "") else { return }
    
    var students: [String: Int] = [:]
    for _ in 1...n {
        print("Student: ", terminator: "")
        let name = readLine() ?? "NoName"
        print("Score: ", terminator: "")
        let score = Int(readLine() ?? "") ?? 0
        students[name] = score
    }
    gradeCalculator(students: students)
}

//Create a program that processes student test scores
func gradeCalculator(students: [String: Int]) {
    let scores = Array(students.values)
    let average = scores.reduce(0, +) / scores.count
    let maxScore = scores.max() ?? 0
    let minScore = scores.min() ?? 0
    
    print("Average: \(average)")
    print("Maximum: \(maxScore)")
    print("Minimum: \(minScore)")
    
    for (name, score) in students {
        let status = score >= average ? "Above average" : "Below average"
        print("\(name): \(score) - \(status)")
    }
}
