//
//  Pack_RecipeApp.swift
//  Pack_Recipe
//
//  Created by Ana Carolina Evangelista on 14/07/25.
//

import SwiftUI

@main
struct Pack_RecipeApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
