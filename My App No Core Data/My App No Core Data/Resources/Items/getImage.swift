//
//  getImage.swift
//  My App No Core Data
//
//  Created by Coleton Watt on 3/29/22.
//

import Foundation
import SwiftUI
import UIKit

func getImage(imageName: String) -> String {
    let imageName2 = imageName.replacingOccurrences(of: "minecraft:", with: "")
    if(UIImage (named: imageName2) != nil){
        return imageName2

    }
    else if( imageName2 == "clownfish"){
        return "fish_clownfish_raw"
    }
    else if( imageName2 == "pufferfish"){
        return "fish_pufferfish_raw"
    }
    else if( imageName2 == "cooked_salmon"){
        return "fish_salmon_cooked"
    }
    else if(imageName2 == "salmon"){
        return "fish_salmon_raw"
    }
    else if(imageName2 == "muttonRaw"){
        return "mutton_raw"
    }
    else if(imageName2 == "muttonCooked"){
        return "mutton_cooked"
    }
    else{
        var imagepart1 = imageName2.components(separatedBy: "_")
        if(imagepart1.count == 2){
            imagepart1.swapAt(0, 1)
        }else{
            imagepart1.append("raw")
        }
        let joined = imagepart1.joined(separator: "_")
        return joined
    }

   
}
