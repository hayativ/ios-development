//
//  main.swift
//  Tasks for week2
//
// main.swift
print("Write a number of task from 1 to 10: ", terminator: "")
if let input = readLine(), let choice = Int(input) {
    switch choice {
    case 1:
        fizzBuzz()
    case 2:
        primeNumbers()
    case 3:
        print("Write temperature: ", terminator: "")
        if let val = Double(readLine() ?? "") {
            print("C, F or K: ", terminator: "")
            let unit = readLine() ?? "C"
            temperatureconverter(value: val, unit: unit)
        }
    case 4:
        shoppingListManager()
    case 5:
        print(terminator: "")
        if let sentence = readLine() {
            wordCounter(sentence: sentence)
        }
    case 6:
        print(terminator: "")
        if let n = Int(readLine() ?? "") {
            print(fibonacci(n))
        }
    case 7:
        gradeCalculatorInput()
    case 8:
        print(terminator: "")
        if let txt = readLine() {
            print(isPalindrome(txt))
        }
    case 9:
        calculatorInput()
    case 10:
        print(terminator: "")
        if let txt = readLine() {
            print(uniqueCharacters(txt))
        }
    default:
        print("Error. Not found")
    }
}
