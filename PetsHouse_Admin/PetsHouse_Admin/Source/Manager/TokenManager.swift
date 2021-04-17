//
//  TokenManager.swift
//  PetsHouse_Admin
//
//  Created by 문지수 on 2021/04/17.
//

import Foundation

struct TokenManager {
    enum token {
        case accessToken
        case refreshToken
    }
    static var currentToken: TokenModel? {
        return StoregaeManager.shared.read()
     }
}

