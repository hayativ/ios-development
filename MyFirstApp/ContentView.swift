//
//  ContentView.swift
//  MyFirstApp
//
//  Created by Михаил Давыдов on 19.09.2025.
//

import SwiftUI

let firstName: String = "Yeva"
let lastName: String = "Davydova"
let birthYear: Int = 2004
let currentYear: Int = 2025
let age: Int = currentYear - birthYear
let isStudent: Bool = true
let height: Double = 1.67

let hobby: String = "doing ceramic"
let numberOfHobbies: Int = 2
let favoriteNumber: Int = 7
let isHobbyCreative: Bool = true
let pet: String = "dog"
let petName: String = "Alba"

let futureGoals: String = "I want to create a famous IT product!"

let lifeStory = """
My name is \(firstName) \(lastName). I am \(age) years old, born in \(birthYear). And my height is \(height)m. I have a \(pet), which name is \(petName).
I am currently \(isStudent ? "a student" : "not a student"). I enjoy \(hobby), which is \(isHobbyCreative ? "a creative hobby" : "not a creative hobby"). I have \(numberOfHobbies) hobbies in total, and my favorite number is \(favoriteNumber).
\(futureGoals)
"""

struct ContentView: View {
    var body: some View {
        ScrollView {
            Text(lifeStory)
                .padding()
        }
    }
}

#Preview {
    ContentView()
}
