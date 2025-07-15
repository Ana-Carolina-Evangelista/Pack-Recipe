//
//  modeloApp.swift
//  modelo
//
//  Created by Ana Carolina Evangelista on 15/07/25.
//

import SwiftUI

@main
struct modeloApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
