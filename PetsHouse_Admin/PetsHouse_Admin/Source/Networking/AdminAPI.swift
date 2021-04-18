//
//  AdminAPI.swift
//  PetsHouse_Admin
//
//  Created by 문지수 on 2021/04/17.
//

import Foundation
import Moya

enum AdminAPI {
    case signIn(_ email: String, _ password: String)
}

extension AdminAPI: TargetType {
    
    var baseURL: URL {
        return URL(string: "/api")!
    }
    
    var path: String {
        switch self {
        case .signIn:
            return "/api/v1/login"
            
        }
    }
    
    var method: Moya.Method {
        switch self {
        case .signIn:
            return .post
        }
    }
    
    var sampleData: Data {
        return Data()

    }
    
    var task: Task {
        switch self {
        case .signIn(let email, let password):
            return .requestParameters(parameters: ["email": email, "password": password], encoding: JSONEncoding.prettyPrinted)
        }
    }
    
    var headers: [String : String]? {
        switch self {
        case .signIn:
            return nil
        }
    }
    


}
