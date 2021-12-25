//
//  Charger.swift
//  weekTestProtocolOrientedProgramming
//
//  Created by 양호준 on 2021/12/25.
//

import Foundation

struct Charger: Chargerable {
    var maximumWattPerHour: WattPerHour
    
    func convert(chargerableWattPerHour: WattPerHour) -> WattPerHour {
        guard maximumWattPerHour < chargerableWattPerHour else {
            return chargerableWattPerHour
        }
        
        return maximumWattPerHour
    }
}

let appleWatchCharger = Charger(maximumWattPerHour: 5)
let iPhoneCharger = Charger(maximumWattPerHour: 18)
let iPadCharger = Charger(maximumWattPerHour: 30)
let MacBookCharger = Charger(maximumWattPerHour: 96)
let FastMacBookCharger = Charger(maximumWattPerHour: 106)
