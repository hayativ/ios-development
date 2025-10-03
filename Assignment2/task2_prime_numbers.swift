import Foundation

func isPrime(_ number: Int) -> Bool {
    if number < 2 { return false }
    for i in 2..<number {
        if number % i == 0 {
            return false
        }
    }
    return true
}

// Prints all prime numbers between 1 and 100
func primeNumbers() {
    for i in 1...100 {
        if isPrime(i) {
            print(i)
        }
    }
}
