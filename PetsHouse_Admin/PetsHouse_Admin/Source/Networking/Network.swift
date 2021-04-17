//
//  Network.swift
//  PetsHouse_Admin
//
//  Created by 문지수 on 2021/04/17.
//

import Foundation

enum Network: Int, Error {
    case success = 200
    case ok = 201
    case forbidden = 403
    case notFound = 404
    case conflict = 409
    case preconditionFailed = 412
    case fail
}
