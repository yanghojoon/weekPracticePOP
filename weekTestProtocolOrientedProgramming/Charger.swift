//
//  Charger.swift
//  weekTestProtocolOrientedProgramming
//
//  Created by 양호준 on 2021/12/25.
//

import Foundation

struct Charger: Chargerable, Portable {
    let name: String
    let maximumWattPerHour: WattPerHour
}

let appleWatchCharger = Charger(name: "애플워치 충전기", maximumWattPerHour: 5)
let iPhoneCharger = Charger(name: "아이폰 충전기", maximumWattPerHour: 18)
let iPadCharger = Charger(name: "아이패드 충전기", maximumWattPerHour: 30)
let macBookCharger = Charger(name: "맥북 충전기", maximumWattPerHour: 96)
let fastMacBookCharger = Charger(name: "맥북 고속충전기", maximumWattPerHour: 106)
