//
//  yarnApp.swift
//  yarn
//
//  Created by Bora Balos on 12/12/2024.
//

import SwiftUI
import Firebase

@main
struct yarnApp: App {
    
    init() {
        FirebaseApp.configure()
    }
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
    }
}
