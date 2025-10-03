import Foundation

//Determines if a string has all unique characters
func uniqueCharacters(_ text: String) -> Bool {
    let cleaned = text.lowercased().filter { $0.isLetter }
    var seen: Set<Character> = []
    for char in cleaned {
        if seen.contains(char) {
            return false
        }
        seen.insert(char)
    }
    return true
}
