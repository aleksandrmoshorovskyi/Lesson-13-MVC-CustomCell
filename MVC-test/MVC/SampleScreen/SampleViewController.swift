//
//  SampleViewController.swift
//  MVC-test
//
//  Created by Aleksandr Moroshovskyi on 02.04.2024.
//

import UIKit

class SampleViewController: UIViewController {
    
    @IBOutlet weak var contentView: SampleView!
    
    var model: SampleModel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupInitialState()
    }
    
    private func setupInitialState() {
        model = SampleModel()
        model.loadData()
        
        model.delegate = self
        
        contentView.delegate = self
        contentView.tableView.dataSource = self
        contentView.tableView.delegate = self
        
        //реєстрація комірки реалізованої в коді
        contentView.tableView.register(
            SampleTableViewCell.self,
            forCellReuseIdentifier: SampleTableViewCell.idintifier)
        
        //реєстрація комірки, що у xib-файлі
        let nib = UINib(nibName: "SampleNibTableViewCell", bundle: nil)
        contentView.tableView.register(nib, forCellReuseIdentifier: "SampleNibTableViewCell")
    }
}

extension SampleViewController: SampleModelDelegate {
    
    func dataDidLoad() {
        //code
    }
}

extension SampleViewController: SampleViewDelegate {
    
}
