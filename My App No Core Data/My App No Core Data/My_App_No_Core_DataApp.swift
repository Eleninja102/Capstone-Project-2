//
//  My_App_No_Core_DataApp.swift
//  My App No Core Data
//
//  Created by Coleton Watt on 3/29/22.
//

import SwiftUI

@main
struct My_App_No_Core_DataApp: App {
    @StateObject private var itemDecoder = allDecoder()

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(itemDecoder)

        }
    }
}
