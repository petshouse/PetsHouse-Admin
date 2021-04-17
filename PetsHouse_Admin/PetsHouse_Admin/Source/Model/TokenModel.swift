//
//  TokenModel.swift
//  PetsHouse_Admin
//
//  Created by 문지수 on 2021/04/17.
//

import Foundation

struct TokenModel: Codable {
    let accessToken: String
    let refreshToken: String
}

