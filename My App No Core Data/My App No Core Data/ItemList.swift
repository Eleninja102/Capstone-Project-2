//
//  ItemList.swift
//  My App No Core Data
//
//  Created by Coleton Watt on 3/29/22.
//

import SwiftUI


struct ItemList: View {
    @EnvironmentObject var itemDecoder: allDecoder
   


    var body: some View {
        let A = itemDecoder.itemDecoded;
        List{
            ForEach(A,  id: \.item!.desc.ideM){ item in
                ItemRow(itemDetail: item)
            }
                
            
        }
    }
}

struct ItemList_Previews: PreviewProvider {
    
    static var previews: some View {
        ItemList()
            .environmentObject(allDecoder())
    }
}
