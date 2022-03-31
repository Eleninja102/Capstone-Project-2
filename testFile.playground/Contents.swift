
//
//  Item.swift
//  My App No Core Data
//
//  Created by Coleton Watt on 3/29/22.
//

import Foundation
import SwiftUI

print("hellow}")


struct Item: Hashable, Codable, Identifiable{
    var id: String;
    var name: String
    
    private var components: Components;
  
    
    struct Components: Hashable, Codable{
        var use_duration : Int;
        var food: Food;
    }
    struct Food: Hashable, Codable{
        var nutrition: Int
        var saturationModifier: SaturationModifier;
        
    }
    enum SaturationModifier: String, CaseIterable, Codable{
        case low = "low"
        case normal = "normal"
        case poor = "poor"
    }

}


//var itemDecode: [Item] = load("items")

class itemDecoder: ObservableObject{
    var itemDecoded : [Item] = load2()
    

    
}


func load2() -> [Item]{
    var data: [Item] = []
    var items: [String];
    do{
        items = try FileManager.default.contentsOfDirectory(atPath: "/Users/coletonwatt/Documents/School/School 12th/Capstone Project/testFile.playground/Resources/items/items")
    
        for file in items{
                 data.append(load(file));
        }
    } catch{
        fatalError("Cannot find items!!!!!!")
    }
    return data;
}



func load<T: Decodable>(_ filename: String) -> T {
    let data: Data

    guard let file = Bundle.main.url(forResource: filename, withExtension: nil)
    else {
        fatalError("Couldn't find \(filename) in main bundle.")
    }

    do {
        data = try Data(contentsOf: file)
    } catch {
        fatalError("Couldn't load \(filename) from main bundle:\n\(error)")
    }

    do {
        let decoder = JSONDecoder()
        return try decoder.decode(T.self, from: data)
    } catch {
        fatalError("Couldn't parse \(filename) as \(T.self):\n\(error)")
    }
}

let something = itemDecoder()
