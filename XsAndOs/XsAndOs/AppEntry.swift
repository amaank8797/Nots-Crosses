//
//  XsAndOsApp.swift
//  XsAndOs
//
//  Created by Amaan Amaan on 12/12/23.
//

import SwiftUI

@main
struct AppEntry: App {
    @AppStorage("yourName") var yourName = ""
    @StateObject var game = GameService()
    var body: some Scene {
        WindowGroup {
            if yourName.isEmpty {
                YourNameView()
            } else {
                
                StartView(yourName: yourName)
                    .environmentObject(game)
            }
        }
    }
}
