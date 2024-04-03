//
//  MyModel.swift
//  MVC-test
//
//  Created by Aleksandr Moroshovskyi on 02.04.2024.
//

import Foundation

class MyModel {
    var name: String = ""
    var lastName: String = ""
    var age: Int = 0
    var delegate: MyModelDelegate? = nil
    
    func LoadData() {
        
        delegate?.DataDidLoad()
    }
}

protocol MyModelDelegate: AnyObject {
    
    func DataDidLoad()
}
