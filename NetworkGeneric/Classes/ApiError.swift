//
//  ApiError.swift
//  MyForum
//
//  Created by Glen Obando on 15/6/21.
//

import Foundation

public enum ApiError: Error{
    case requestFailed(description:String)
    case jsonConversionFailure(description:String)
    case invalidData
    case responseUnsuccessful(description:String)
    case jsonParsingFailure
    case noInternet
    case failedSerialization
    case deleteSuccessful(description:String)
}
