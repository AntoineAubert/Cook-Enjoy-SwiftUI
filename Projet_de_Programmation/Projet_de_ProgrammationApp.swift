//
//  Projet_de_ProgrammationApp.swift
//  Projet_de_Programmation
//
//  Created by Antoine Aubert on 17/11/2020.
//

import SwiftUI

@main
struct Projet_de_ProgrammationApp: App {
    
    @StateObject  var cookLibrary = CookLibrary()
    var body: some Scene {
        WindowGroup {
            HomeView(cookLibrary: cookLibrary)
        }
    }
}
