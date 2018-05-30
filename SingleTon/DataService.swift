//
//  DataService.swift
//  SingleTon
//
//  Created by Son on 5/16/18.
//  Copyright © 2018 Son. All rights reserved.
//

import Foundation
class DataService {
    static let shared: DataService = DataService()
    private var _numbers : [Int]?
    var numbers : [Int] {
        get {
        if _numbers == nil {
            getNumber()
        }
        return _numbers ?? []
        }
        set {
            _numbers = newValue
        }
    }
    func getNumber(){
        _numbers = []
        _numbers = Array(1...10)
    }
    func addNumber(from number : Int ){
        _numbers?.append(number)
    }
    func removeNumber(from index : IndexPath){
        _numbers?.remove(at: index.row)
        
    }
}



