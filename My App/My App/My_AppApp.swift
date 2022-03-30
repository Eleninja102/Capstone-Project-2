//
//  My_AppApp.swift
//  My App
//
//  Created by Coleton Watt on 3/29/22.
//

import SwiftUI

@main
struct My_AppApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
