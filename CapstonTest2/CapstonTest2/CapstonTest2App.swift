//
//  CapstonTest2App.swift
//  CapstonTest2
//
//  Created by Coleton Watt on 3/27/22.
//

import SwiftUI

@main
struct CapstonTest2App: App {
    @StateObject private var modelData = ModelData()
    
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(modelData)

        }
    }
}
