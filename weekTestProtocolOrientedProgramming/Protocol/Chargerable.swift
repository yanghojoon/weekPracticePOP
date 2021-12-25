//
//  Chargerable.swift
//  weekTestProtocolOrientedProgramming
//
//  Created by 양호준 on 2021/12/25.
//

import Foundation

protocol Chargerable {
    var maximumWattPerHour: WattPerHour { get }
    
    func convert(chargerableWattPerHour: WattPerHour) -> WattPerHour
}
