//
//  OneMoreView.swift
//  MVC-test
//
//  Created by Aleksandr Moroshovskyi on 02.04.2024.
//

import UIKit

protocol OneMoreViewDelegate: AnyObject {
    
}

class OneMoreView: UIView {
    
    @IBOutlet weak var tableView: UITableView!
    
    weak var delegate: OneMoreViewDelegate?

}
