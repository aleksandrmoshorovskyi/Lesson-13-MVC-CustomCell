//
//  SampleView.swift
//  MVC-test
//
//  Created by Aleksandr Moroshovskyi on 02.04.2024.
//

import UIKit

protocol SampleViewDelegate: AnyObject {
    
}

class SampleView: UIView {
    
    @IBOutlet weak var tableView: UITableView!
    
    weak var delegate: SampleViewDelegate?
}
