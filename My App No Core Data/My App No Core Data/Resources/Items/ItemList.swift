//
//  ItemList.swift
//  My App No Core Data
//
//  Created by Coleton Watt on 3/29/22.
//

import SwiftUI

struct ItemList: View {
    @EnvironmentObject var itemDecoder: ItemDecoder;

    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
    }
}

struct ItemList_Previews: PreviewProvider {
    static var previews: some View {
        ItemList()
            .environmentObject(ItemDecoder())

    }
}
