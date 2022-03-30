//
//  ItemList.swift
//  My App No Core Data
//
//  Created by Coleton Watt on 3/29/22.
//

import SwiftUI


struct ItemList: View {
    @EnvironmentObject var itemDecoder: ItemDecoder
   


    var body: some View {
        let A = itemDecoder.itemDecoded;
        List{
            ForEach(A,  id: \.type.desc.ideM){ item in
                ItemRow(itemDetail: item)
            }
                
            
        }
    }
}

struct ItemList_Previews: PreviewProvider {
    
    static var previews: some View {
        ItemList()
            .environmentObject(ItemDecoder())
    }
}
