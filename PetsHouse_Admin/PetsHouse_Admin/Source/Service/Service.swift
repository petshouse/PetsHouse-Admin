//
//  Service.swift
//  PetsHouse_Admin
//
//  Created by 문지수 on 2021/03/31.
//

import Foundation

import RxSwift
import Moya

class Service {
    let provider = MoyaProvider<AdminAPI>()
    
    func signIn(_ email: String, _ password: String) -> Observable<Network> {
        return provider.rx.request(.signIn(email, password))
            .filterSuccessfulStatusCodes()
            .asObservable()
            .map { _ -> Network in
                return (.success)
            }.catchError{ [unowned self] in return .just(self.setNetworkError($0))}
    }
    
    func setNetworkError(_ error: Error) -> Network {
        guard let status = (error as? MoyaError)?.response?.statusCode else { return (.fail) }
         print(error)
        return (Network(rawValue: status) ?? .fail)
     }
}


