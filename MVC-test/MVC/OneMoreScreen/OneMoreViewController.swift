//
//  OneMoreViewController.swift
//  MVC-test
//
//  Created by Aleksandr Moroshovskyi on 02.04.2024.
//

import UIKit

class OneMoreViewController: UIViewController {
    
    @IBOutlet weak var contentView: OneMoreView!
    
    var model: OneMoreModel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupInitial()
    }
    
    private func setupInitial() {
        model = OneMoreModel()
        model.loadData()
        
        model.delegate = self
        
        contentView.delegate = self
        contentView.tableView.dataSource = self
        contentView.tableView.delegate = self
    }
}

extension OneMoreViewController: OneMoreModelDelegate {
   
    func dataDidLoad() {
        //
    }
}

extension OneMoreViewController: OneMoreViewDelegate {
    
}
