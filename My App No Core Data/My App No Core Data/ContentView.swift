//
//  ContentView.swift
//  My App No Core Data
//
//  Created by Coleton Watt on 3/29/22.
//

import SwiftUI

struct ContentView: View {
   
    var body: some View {
        ItemList()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .environmentObject(ItemDecoder())
    }
}
