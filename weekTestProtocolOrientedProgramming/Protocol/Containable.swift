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

// 이렇게 구현해줘도 items가 private면 매개변수에 집어넣어줄 수 없음
//    mutating func put(in bag: inout [Portable], item: Portable) {
//        bag.append(item)
//    }
}
