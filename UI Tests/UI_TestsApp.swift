//
//  UI_TestsApp.swift
//  UI Tests
//
//  Created by Merab Okruashvili on 02/10/2026.
//

import SwiftUI

@main
struct UI_TestsApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView(calories: .constant(100), protein: .constant(100), carbs: .constant(100), fats: .constant(100))
        }
    }
}
