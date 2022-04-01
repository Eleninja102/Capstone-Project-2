//
//  ItemRow.swift
//  My App No Core Data
//
//  Created by Coleton Watt on 3/29/22.
//

import SwiftUI

struct ItemRow: View {

    var itemDetail: behaviorDetails
   

    var body: some View {
        let itemDetail2 = itemDetail.item!.desc
        let name = itemDetail2.ideM
        let x = getImage(imageName: name)

        HStack(alignment: .center, spacing: 2.0){
            Image(x)
                .resizable(resizingMode: .stretch)
                .aspectRatio(contentMode: .fit)
                .frame(width: 50, height: 50)
            Text(x)
                .font(.headline)
                .multilineTextAlignment(.leading)
            Spacer()
        }
       
        
        
    }
}

struct ItemRow_Previews: PreviewProvider {
    static var itemDecoder = allDecoder().itemDecoded[1]

    static var previews: some View {
        Group{
            ItemRow(itemDetail: itemDecoder)
        }
        .previewLayout(.fixed(width: 200, height: 70))

    }
}
