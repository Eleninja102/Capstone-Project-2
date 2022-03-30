//
//  ItemDecoder.swift
//  My App No Core Data
//
//  Created by Coleton Watt on 3/29/22.
//

import Foundation
import Combine

//var itemDecode: [Item] = load("items")

final class ItemDecoder: ObservableObject{
    @Published var itemDecoded : [Item] = load2()
    
    

    
}


func load2() -> [Item]{
    var data: [Item] = []
    var items: [URL];
        items =  Bundle.main.urls(forResourcesWithExtension: ".json", subdirectory: nil)!
    
        for file in items{
            
                 data.append(load(file));
        }
   
    return data;
}



func load<T: Decodable>(_ filename: URL) -> T {
    let data: Data

    do {
        data = try Data(contentsOf: filename)
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
