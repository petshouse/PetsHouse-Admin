//
//  ViewModelType.swift
//  PetsHouse_Admin
//
//  Created by 문지수 on 2021/03/31.
//

import Foundation

protocol ViewModelType {
    associatedtype Input
    associatedtype Output

    func transform(input: Input) -> Output
}
