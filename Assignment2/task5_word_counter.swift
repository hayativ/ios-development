import Foundation

//Counts the frequency of each word in a given sentence
func wordCounter(sentence: String) {
    let words = sentence.lowercased()
        .components(separatedBy: CharacterSet.alphanumerics.inverted)
        .filter { !$0.isEmpty }
    
    var frequency: [String: Int] = [:]
    for word in words {
        frequency[word, default: 0] += 1
    }
    
    for (word, count) in frequency {
        print("\(word): \(count)")
    }
}
