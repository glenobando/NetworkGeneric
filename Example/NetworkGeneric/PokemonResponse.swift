//
//  PokemonResponse.swift
//  NetworkGeneric_Example
//
//  Created by Glen Obando on 18/6/21.
//  Copyright © 2021 CocoaPods. All rights reserved.
//

import Foundation

struct PokemonResponse : Codable {
    var count: Int
    var next: String
    var previous: String?
    var results: [Pokemon]
}
