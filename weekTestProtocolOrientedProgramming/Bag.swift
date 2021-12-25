//
//  Bag.swift
//  weekTestProtocolOrientedProgramming
//
//  Created by 양호준 on 2021/12/25.
//

import Foundation

struct Bag: Containable {
    var items: [Portable] = [] // 프로토콜에 internal보다 높은 접근 제어를 할 수 없었는데 그렇다면 여기에 private를 걸고 싶다면 어떻게 해야할까?
    
    func introduceBag() {
        print(items)
    }
}

var gucciBag = Bag()

