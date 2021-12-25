//
//  MacBook.swift
//  weekTestProtocolOrientedProgramming
//
//  Created by 양호준 on 2021/12/25.
//

import Foundation

struct MacBook {
    let permittedChargingWatt: Watt
    var currentChargingContainer: Watt
    let maximumChargingContainer: Watt = 100
    
    mutating func chargeBattery(charger: Chargerable) {
        if permittedChargingWatt < charger.maximumWattPerHour {
            let requiredChargeWatt =  maximumChargingContainer - currentChargingContainer
            let chargingHour = requiredChargeWatt / permittedChargingWatt
            print(chargingHour)
        }
        
        guard permittedChargingWatt < charger.maximumWattPerHour else {
            let requiredChargeWatt =  maximumChargingContainer - currentChargingContainer
            let chargingHour = requiredChargeWatt / charger.maximumWattPerHour
            print(chargingHour)
            
            return
        }
        
        let requiredChargeWatt =  maximumChargingContainer - currentChargingContainer
        let chargingHour = requiredChargeWatt / permittedChargingWatt
        print(chargingHour)
    }
}
