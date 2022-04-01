//
//  Item.swift
//  My App No Core Data
//
//  Created by Coleton Watt on 3/29/22.
//

import Foundation
import SwiftUI
import Combine


struct behaviorDetails: Codable {
    var version: String
    var item: Item?
    var entity: entity?

    private enum CodingKeys: String, CodingKey {
        case item = "minecraft:item"
        case entity = "minecraft:entity"
        case version = "format_version"
    }
}

struct Item: Codable {
    var desc: descripitions
    var components: Components?

    private enum CodingKeys: String, CodingKey {
        case desc = "description"
        case components = "components"

    }
}

struct ComponetGroup: Codable {
    var modeSwiter: ModeSwiter
    var equipment: Equipment
    var rangedMode: RangedMode
    var meleeMode: MeleeMode
    var hunterMode: HunterMode
    var wanderMode: WanderMode
    private enum CodingKeys: String, CodingKey {
        case modeSwiter = "minecraft:mode_switcher"
        case equipment = "minecraft:equipment"
        case rangedMode = "minecraft:ranged_mode"
        case meleeMode = "minecraft:melee_mode"
        case hunterMode = "minecraft:hunter_mode"
        case wanderMode = "minecraft:wander_mode"
    }
}

struct ModeSwiter: Codable {

    var targetSensor: TargetSensor
    
    private enum CodingKeys: String, CodingKey {
        case targetSensor = "minecraft:target_nearby_sensor"
        
    }
    
}

struct TargetSensor: Codable {
    var insideRange : Double
    var outsideRange: Double
    var mustSee: Bool
    var onInsideRange: OnRange
    var onOutsideRange: OnRange
    
    
    private enum CodingKeys: String, CodingKey {
        case insideRange = "inside_range"
        case outsideRange = "outside_range"
        case onInsideRange = "on_inside_range"
        case onOutsideRange = "on_outside_range"
        case mustSee = "must_see"
    }
    
}
struct OnRange: Codable {
    var event: String
    var target: String
}
struct Equipment: Codable{
    var table: String
    var slotDropChance: [SlotDropChance]
    private enum CodingKeys: String, CodingKey {
        case table = "table"
        case slotDropChance = "slot_drop_chance"
    }
}
struct SlotDropChance: Codable{
    var slot: String
    var drop_chance: Double
        
}
struct RangedMode: Codable {
    var shooter: Shooter
    var beRangedAttack: BeRangedAttack
    private enum CodingKeys: String, CodingKey {
        case shooter = "minecraft:shooter"
        case beRangedAttack = "minecraft:behavior.ranged_attack"
    }
}
struct Shooter: Codable{
    var def: String
}

struct BeRangedAttack: Codable{
    var priority: Int
    var burst_shots: Int
    var burst_interval: Double
    var charge_charged_trigger: Double
    var charge_shoot_trigger: Double
    var attack_interval_min: Double
    var attack_interval_max: Double
    var attack_radius: Double
}
struct MeleeMode: Codable{
    var attack: Attack
    var beMeleeAttack: BeMeleeAttack
    private enum CodingKeys: String, CodingKey {
        case attack = "minecraft:attack"
        case beMeleeAttack = "minecraft:behavior.melee_attack"
    }
}
struct Attack: Codable{
    var damage: Int
}
struct BeMeleeAttack: Codable{
    var priority: Int
    var speed_multiplier: Int
    var track_target: Bool
    var require_complete_path: Bool
}
struct HunterMode: Codable{
    var navigation: Navigation
    private enum CodingKeys: String, CodingKey {
        case navigation = "minecraft:navigation.generic"
    }

}
struct Navigation: Codable{
    var is_amphibious: Bool
    var can_path_over_water: Bool
    var can_break_doors: Bool
    var can_swim: Bool
    var can_walk: Bool
    var avoid_sun: Bool
}
struct WanderMode: Codable{
    var navigation: Navigation
    private enum CodingKeys: String, CodingKey {
        case navigation = "minecraft:navigation.generic"
    }
}
struct WaterMovement: Codable{
    var value: Double
}

struct groupDetail: Codable{
    var scale: [String: Double]?
    var movement: [String: Double]?
    var waterMovement: WaterMovement?
    var loot: Loot?
    var reward: Reward?
    private enum CodingKeys: String, CodingKey {
        case scale = "minecraft:scale"
        case movement = "minecraft:movement"
        case waterMovement = "minecraft:underwater_movement"
        case loot = "minecraft:loot"
        case reward = "minecraft:experience_reward"
    }
}
struct Reward: Codable{
    var on_death: String
}
struct Loot: Codable{
    var table: String
}

struct entity: Codable {
    var desc: descripitions
    var components: Components?
    var componetGroup: ComponetGroup
    //var component_groups: [String: groupDetail]//very important

    private enum CodingKeys: String, CodingKey {
        case desc = "description"
        case components = "components"
        case componetGroup = "component_groups"

    }
}
struct descripitions: Codable{
    var ideM: String
    var spawnable: Bool?
    var summonable: Bool?
    var experimental: Bool?
    var stackSize: Int?
    
  
    private enum CodingKeys: String, CodingKey {
        case ideM = "identifier"
        case spawnable = "is_spawnable"
        case summonable = "is_summonable"
        case experimental = "is_experimental"
        case stackSize = "minecraft:max_stack_size"
    }

}
struct Components: Codable {
    var useDuration: Int?
    var food: Food?
    var seed: Seed?
    var nameable: Nameable?
    var family: Family?
    var equipItem: EquipItem?
    var collisionBox: CollisionBox?
    var aBreakDoor: ABreakDoor?
    var waterMovement: WaterMovement?
    var genMovement: GenMovement?
    var jumpStatic: JumpStatic?
    var canClimb: CanClimb?
    var health: Health?
    var hurtCondition: HurtCondition?
    var movement: Movement
    var burnDaylight: BurnDaylight
    var breathable: Breathable
    var navGeneric: Navigation
    var shareables: Shareables
    var despawn: Despawn
    var beFleeSun: BeFleeSun
    var beEquipItem: BeEquipItem
    var beStompTurtle: BeStompTurtle
    var bePickupItems: BePickupItems
    var beRandomStroll: BeRandomStroll
    var beLookAtPlayer: BeLookAtPlayer
    var beRandomnLook: BeRandomnLook
    var beHurtBy: BeHurtBy
    var beNearAtt: BeNearAtt
    var physics: Physics
    var pushable: Pushable
    private enum CodingKeys: String, CodingKey {
        case food = "minecraft:food"
        case useDuration = "minecraft:use_duration"
        case seed = "minecraft:seed"
        case nameable = "minecraft:nameable"
        case family = "minecraft:type_family"
        case equipItem = "minecraft:equip_item"
        case collisionBox = "minecraft:collision_box"
        case aBreakDoor = "minecraft:annotation.break_door"
        case waterMovement = "minecraft:underwater_movement"
        case genMovement = "minecraft:movement.generic"
        case jumpStatic = "minecraft:jump.static"
        case canClimb = "minecraft:can_climb"
        case health = "minecraft:health"
        case hurtCondition = "minecraft:hurt_on_condition"
        case movement = "minecraft:movement"
        case burnDaylight = "minecraft:burns_in_daylight"
        case breathable = "minecraft:breathable"
        case navGeneric = "minecraft:navigation.generic"
        case shareables = "minecraft:shareables"
        case despawn = "minecraft:despawn"
        case beFleeSun = "minecraft:behavior.flee_sun"
        case beEquipItem = "minecraft:behavior.equip_item"
        case beStompTurtle = "minecraft:behavior.stomp_turtle_egg"
        case bePickupItems = "minecraft:behavior.pickup_items"
        case beRandomStroll = "minecraft:behavior.random_stroll"
        case beLookAtPlayer = "minecraft:behavior.look_at_player"
        case beRandomnLook = "minecraft:behavior.random_look_around"
        case beHurtBy = "minecraft:behavior.hurt_by_target"
        case beNearAtt = "minecraft:behavior.nearest_attackable_target"
        case physics = "minecraft:physics"
        case pushable = "minecraft:pushable"
    }
}
struct Pushable: Codable{
    var is_pushable: Bool
    var is_pushable_by_piston: Bool
}
struct Physics: Codable{
    
}
struct BeNearAtt: Codable{
    var priority: Int
    var reselect_targets: Bool
    var must_see: Bool
    var within_radius: Double
    var must_see_forget_duration: Double
    var persist_time: Double
    var entity_types: [EntityTypes]
}
struct EntityTypes: Codable{
    var filters: Filters2
    var max_dist: Int
    var must_see: Bool?
}
struct Filters2: Codable{
    var all_of: [AllOf]
    var any_of: [Filters]
    
}
struct AllOf: Codable{
    var any_of: [Filters]
}

struct BeHurtBy: Codable{
    var prioity: Int
}
struct BeRandomnLook: Codable{
    var priority: Int
}
struct BeLookAtPlayer: Codable{
    var priority: Int
    var look_distance: Int
    var probability: Double
}
struct BeRandomStroll: Codable{
    var priority: Int
    var speed_multiplier: Int
}
struct BePickupItems: Codable{
    var priority: Int
    var max_dist: Int
    var goal_radius: Int
    var speed_multiplier: Double
    var pickup_based_on_chance: Bool
    var can_pickup_any_item: Bool
    var excluded_items: [String]
}
struct BeStompTurtle: Codable{
    var priority: Int
    var speed_multiplier: Int
    var search_range: Int
    var search_height: Int
    var goal_radius: Double
    var interval: Int
}
struct BeEquipItem: Codable{
    var priority: Int
}
struct Despawn: Codable{
    var despawn_from_distance: DespawnFromDistance
}
struct BeFleeSun: Codable{
    var priority: Int
    var speed_multiplier: Int
}
struct DespawnFromDistance: Codable{
    
}
struct Shareables: Codable{
    var items: [Items]
}

struct Items: Codable{
    var item: String
    var want_amount: Int
    var surplus_amount: Int
    var priority: Int
    
}
struct Breathable: Codable{
    var total_supply: Int
    var suffocate_time: Int
    var breathes_air: Bool
    var breathes_water: Bool
}
struct BurnDaylight: Codable{
    
}
struct Movement: Codable{
    var value: Double
}
struct HurtCondition: Codable{
    var damage_conditions: [DamageConditions]
    var cause: String
    var damage_per_tick: Int
}
struct DamageConditions: Codable{
    var filters: Filters
}
struct Filters: Codable{
    var test: String
    var subject: String
    var opertor: String
    var value: Bool
}
struct GenMovement: Codable{
    
}
struct JumpStatic: Codable{
    
}
struct CanClimb: Codable{
    
}
struct Health: Codable{
    var value: Int
    var Max: Int
}
struct ABreakDoor: Codable{
    
}
struct CollisionBox: Codable{
    var width: Double
    var height: Double
}
struct EquipItem: Codable{
    
}
struct Nameable: Codable{
    
}
struct Family: Codable{
    var family: [String]
}


struct Food: Codable{
    var nutrition: Int
    var saturation: String
    var effects: [Effects]?
    var useOuput: String?
    var useAction: String?
    var useRange: [Int]?
    var cooldownType: String?
    var cooldownTime: Int?
    var alwaysEat: Bool?
    var stackData: Bool?
    var maxDamage: Int?
    var removeEffects: [String]?
    
    private enum CodingKeys: String, CodingKey {
        case nutrition = "nutrition"
        case saturation = "saturation_modifier"
        case effects = "effects"
        case useOuput = "using_converts_to"
        case useAction = "on_use_action"
        case useRange = "on_use_range"
        case cooldownType = "cooldown_type"
        case cooldownTime = "cooldown_time"
        case alwaysEat = "can_always_eat"
        case stackData = "minecraft:stacked_by_data"
        case maxDamage = "minecraft:max_damage"
        case removeEffects = "remove_effects"
    }
}
struct Effects: Codable {
    var effectName: String
    var effectChance: Double?
    var effectDuration: Int
    var effectAmplifier: Int
    private enum CodingKeys: String, CodingKey {
        case effectName = "name"
        case effectChance = "chance"
        case effectDuration = "duration"
        case effectAmplifier = "amplifier"
        
    }
}
struct Seed: Codable{
    var results: String
    var plantAt: [String]?
    var plantFace: String?
    var solidSurface: Bool?
    private enum CodingKeys: String, CodingKey {
        case results = "crop_result"
        case plantAt =  "plant_at"
        case plantFace = "plant_at_face"
        case solidSurface = "plant_at_any_solid_surface"
    }
}

