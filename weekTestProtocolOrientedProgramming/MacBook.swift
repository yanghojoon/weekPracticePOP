//
//  MacBook.swift
//  weekTestProtocolOrientedProgramming
//
//  Created by 양호준 on 2021/12/25.
//

import Foundation

struct MacBook {
    let permittedChargingWatt: Watt
    var currentCharger: Watt
    let maximumCharger: Watt = 100
    
    func chargeBattery(charger: Chargerable) {
        let startTime: CFAbsoluteTime = CFAbsoluteTimeGetCurrent()
        
        
        
        let endTime: CFAbsoluteTime = CFAbsoluteTimeGetCurrent()
        let duration = endTime - startTime
        print(duration)
    }
}
