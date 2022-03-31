//
//  Item.swift
//  My App No Core Data
//
//  Created by Coleton Watt on 3/29/22.
//

import Foundation
import SwiftUI



struct Item: Codable{
    var version: String
    var type: Types
    
    private enum CodingKeys: String, CodingKey {
        case type = "minecraft:item"
        case version = "format_version"
    }
}
struct Types: Codable {
    var desc: descripitions
    var components: Components?
    private enum CodingKeys: String, CodingKey {
        case desc = "description"
        case components = "components"

    }
}
struct descripitions: Codable{
    var ideM: String
    
    private enum CodingKeys: String, CodingKey {
        case ideM = "identifier"
    }

}
struct Components: Codable {
    var useDuration: Int?
    var food: Food?
    private enum CodingKeys: String, CodingKey {
        case food = "minecraft:food"
        case useDuration = "minecraft:use_duration"
    }
    
}
struct Food: Codable{
    var nutrition: Int
    var saturation_modifier: String
    /*enum SaturationModifier: String, CaseIterable, Codable{
        case poor = "poor"
        case low = "low"
        case normal = "normal"
        case good = "good"
        case supernatural = "supernatural"
    }*/
}

//golden_apple and enchanted apple don't work idk why




