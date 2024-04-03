//
//  OneMoreModel.swift
//  MVC-test
//
//  Created by Aleksandr Moroshovskyi on 02.04.2024.
//

import Foundation

protocol OneMoreModelDelegate: AnyObject {
    
    func dataDidLoad()
}

class OneMoreModel {
    
    weak var delegate: OneMoreModelDelegate?
    
    var someData: [String] = []
    
    func loadData() {
        someData = ["One", "Two", "Three"]
        delegate?.dataDidLoad()
    }
}
