//
//  Post.swift
//  NetworkGeneric_Example
//
//  Created by Glen Obando on 17/6/21.
//  Copyright © 2021 CocoaPods. All rights reserved.
//

import Foundation

struct Post : Codable{
    var userId:Int
    var id:Int
    var title:String
    var body:String
}
