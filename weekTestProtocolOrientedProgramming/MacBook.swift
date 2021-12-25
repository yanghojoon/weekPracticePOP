//
//  MacBook.swift
//  weekTestProtocolOrientedProgramming
//
//  Created by 양호준 on 2021/12/25.
//

import Foundation

struct MacBook: Portable {
    let permittedChargingWatt: Watt
    var currentChargingContainer: Watt
    let maximumChargingContainer: Watt = 100
    
    mutating func chargeBattery(charger: Chargerable) {
        let requiredChargeWatt =  maximumChargingContainer - currentChargingContainer
        let chargingHour = requiredChargeWatt / charger.convert(chargerableWattPerHour: permittedChargingWatt)
        print("충전에 걸린 시간: \(chargingHour)시간")
    }
}

var macbook = MacBook(permittedChargingWatt: 80, currentChargingContainer: 20)

