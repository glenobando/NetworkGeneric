//
//  Pokemon.swift
//  NetworkGeneric_Example
//
//  Created by Glen Obando on 18/6/21.
//  Copyright © 2021 CocoaPods. All rights reserved.
//

import Foundation

struct Pokemon : Codable {
    var name: String
    var url: String?
    var base_experience: Int?
    var height: Int?
    var is_default: Bool?
    var weight: Int?
}
