//
//  Comment.swift
//  NetworkGeneric_Example
//
//  Created by Glen Obando on 17/6/21.
//  Copyright © 2021 CocoaPods. All rights reserved.
//

import Foundation

struct Comment : Codable {
    var postId: Int
    var id: Int
    var name: String
    var email: String
    var body: String
}
