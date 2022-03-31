//
//  ItemViewer.swift
//  My App No Core Data
//
//  Created by Coleton Watt on 3/29/22.
//

import SwiftUI


struct ItemViewer: View {
    @EnvironmentObject var itemDecoder: allDecoder

    var itemDetail: Item
    var body: some View {
        HStack{
            Text(itemDetail.version)
            Text(itemDetail.type.desc.ideM)
        }

    }
}

struct ItemViewer_Previews: PreviewProvider {
    static let itemDecoder = allDecoder()

    static var previews: some View {
        Group{
            ForEach(0..<44){ i in
                ItemViewer(itemDetail: itemDecoder.itemDecoded[i])
                    .environmentObject(itemDecoder)
            }
            
            

        }
        .previewLayout(.fixed(width: 300, height: 70))
    }
}
