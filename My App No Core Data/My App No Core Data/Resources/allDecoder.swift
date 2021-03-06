//
//  allDecoder.swift
//  My App No Core Data
//
//  Created by Coleton Watt on 3/29/22.
//

import Foundation
import Combine

//var itemDecode: [Item] = load("items")
func sorterByideM(this:behaviorDetails, that:behaviorDetails) -> Bool {
    return getImage(imageName: this.item!.desc.ideM) < getImage(imageName: that.item!.desc.ideM)
}

final class allDecoder: ObservableObject{
    @Published var behaviorPack: [[behaviorDetails]]
    var itemDecoded: [behaviorDetails] = load2().sorted(by: sorterByideM)
    var entityDecoded: [behaviorDetails] = load3()
    init(){
        behaviorPack = [itemDecoded, entityDecoded]
    }

    
    
}

func load3() -> [behaviorDetails]{
    var data: [behaviorDetails] = []
    var items: [URL];

    items =  Bundle.main.urls(forResourcesWithExtension: ".json", subdirectory: "entities")!

    for file in items{
        data.append(load(file));
    }
   
    return data;
}
func load2() -> [behaviorDetails]{
    var data: [behaviorDetails] = []
    var items: [URL];

    items =  Bundle.main.urls(forResourcesWithExtension: ".json", subdirectory: "TestJson")!

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
