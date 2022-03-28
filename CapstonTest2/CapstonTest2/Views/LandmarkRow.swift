//
//  LandmarkRow.swift
//  CapstonTest2
//
//  Created by Coleton Watt on 3/28/22.
//

import SwiftUI

struct LandmarkRow: View {
    var landmark: Landmark
    
    
    var body: some View {
        HStack{
            landmark.image
                .resizable()
                .frame(width: 50, height: 50)
            Text(landmark.name);
            Spacer();
        }
    }
}

struct LandmarkRow_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            LandmarkRow(landmark: landmarks[0])
            LandmarkRow(landmark: landmarks[1])
            LandmarkRow(landmark: landmarks[2])
            LandmarkRow(landmark: landmarks[3])
            LandmarkRow(landmark: landmarks[4])



        }
        .previewLayout(.fixed(width: 300, height: 70))
    }
}
