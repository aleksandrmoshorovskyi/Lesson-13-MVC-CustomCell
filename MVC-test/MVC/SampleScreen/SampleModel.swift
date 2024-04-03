//
//  SampleModel.swift
//  MVC-test
//
//  Created by Aleksandr Moroshovskyi on 02.04.2024.
//

import Foundation

protocol SampleModelDelegate: AnyObject {
    
    func dataDidLoad()
}

class SampleModel {
    
    weak var delegate: SampleModelDelegate?
    
    var someData: [String] = []
    
    func loadData() {
        self.someData = ["First", "Second", "Third", "Fourth", "Fifth", "Nasth", "Coffeth"]
        self.delegate?.dataDidLoad()
    }
}
