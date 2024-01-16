//
//  MecipieAppApp.swift
//  MecipieApp
//
//  Created by Marvis Ighedosa on 29/11/2023.
//

import SwiftUI

@main
struct MecipieAppApp: App {
    @StateObject var recipiesViewModel = RecipieViewModel()
    
    var body: some Scene {
        WindowGroup {
            ContentView().environmentObject(recipiesViewModel)
        }
    }
}
