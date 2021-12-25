//
//  Containable.swift
//  weekTestProtocolOrientedProgramming
//
//  Created by 양호준 on 2021/12/25.
//

import Foundation

protocol Containable {
    var items: [Portable] { get set } // private는 프로토콜에 접근제어 설정을 할 수 없다. 
    
    mutating func put(item: Portable)
}

extension Containable {
    mutating func put(item: Portable) {
        items.append(item)
    }
}
