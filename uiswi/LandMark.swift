//
//  LandMark.swift
//  uiswi
//
//  Created by 홍태희 on 2021/09/27.
//

import Foundation

struct Landmark: Hashable, Codable {
    var id: Int
    var name: String
    var park: String
    var state: String
    var description: String
}
