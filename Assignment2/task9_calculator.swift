import Foundation

//Get data from input
func calculatorInput() {
    print("a: ", terminator: "")
    let a = Double(readLine() ?? "") ?? 0
    print("b: ", terminator: "")
    let b = Double(readLine() ?? "") ?? 0
    print("+, -, * or /: ", terminator: "")
    let op = readLine() ?? "+"
    
    calculator(a: a, b: b, operation: op)
}

func add(_ a: Double, _ b: Double) -> Double { a + b }
func subtract(_ a: Double, _ b: Double) -> Double { a - b }
func multiply(_ a: Double, _ b: Double) -> Double { a * b }
func divide(_ a: Double, _ b: Double) -> Double? { b == 0 ? nil : a / b }

//Create a program that functions as a simple calculator
func calculator(a: Double, b: Double, operation: String) {
    switch operation {
    case "+": print(add(a, b))
    case "-": print(subtract(a, b))
    case "*": print(multiply(a, b))
    case "/": print(divide(a, b) ?? "Error. Divide by zero")
    default: print("Error. Not found")
    }
}
