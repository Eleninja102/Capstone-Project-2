import UIKit
//
//  Atrritbutes And Skills.swift
//  App Test 1
//
//  Created by Coleton Watt on 1/11/22.
//

import Foundation
import SwiftUI
import Darwin
var skills = (
    Acrobatics: 0,
    Animal_Handling: 0,
    Arcana: 0,
    Athletics: 0,
    Deception: 0,
    History: 0,
    Insight: 0,
    Intimidation: 0,
    Investigation: 0,
    Medicine: 0,
    Nature: 0,
    Percepetion: 0,
    Performance: 0,
    Persuasion: 0,
    Religion: 0,
    Slight_of_Hand: 0,
    Stealth: 0,
    Survival: 0
)

public struct Attributes_SKills{
    var profeciencyBonus: Int
    var attribute = (
        Strength: 0,
        Dexterity: 0,
        Constituion: 0,
        Intellignce: 0,
        Widsom: 0,
        Charisma: 0
)
}

func outputRanomd() -> Int {
    var x = 10
    x = Int.random(in: 1..<100)
    return x
}

var character = Attributes_SKills(profeciencyBonus: 12, attribute: (Strength: 1, Dexterity: 2, Constituion: 3, Intellignce: 4, Widsom: 5, Charisma: 6))

print(character.attribute.Strength)
skills.Acrobatics = character.attribute.Strength + 12;
character.attribute.Strength = 12
print(character)
var x : Int
x = outputRanomd()
print(x)


