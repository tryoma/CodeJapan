//
//  Entity.swift
//  CodeJapan
//
//  Created by 田久保竜馬 on 2021/11/27.
//

import Foundation

struct CovidInfo: Codable {
    struct Total: Codable {
        var pcr: Int
        var positive: Int
        var hospitalize: Int
        var severe: Int
        var death: Int
        var discharge: Int
    }
}
