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
            print("충전에 걸린 시간: \(chargingHour)시간")
        }
        
        guard permittedChargingWatt < charger.maximumWattPerHour else {
            let requiredChargeWatt =  maximumChargingContainer - currentChargingContainer
            let chargingHour = requiredChargeWatt / charger.maximumWattPerHour
            print("충전에 걸린 시간: \(chargingHour)시간")
            
            return
        }
        
        let requiredChargeWatt =  maximumChargingContainer - currentChargingContainer
        let chargingHour = requiredChargeWatt / permittedChargingWatt
        print(chargingHour)
    }
}

var macbook = MacBook(permittedChargingWatt: 80, currentChargingContainer: 20)

