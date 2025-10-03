import Foundation

//Returns an array containing the first n numbers of the Fibonacci sequence
func fibonacci(_ n: Int) -> [Int] {
    // If n <= 0 returns empty array
    if n <= 0 {
        return []
    }
    // If n == 1 returns only the first element
    if n == 1 {
        return [0]
    }
    // Starts sequence with [0, 1]
    var sequence = [0, 1]
    
    for i in 2..<n {
        sequence.append(sequence[i-1] + sequence[i-2])
    }
    
    return sequence
}
