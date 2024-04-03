//
//  MyViewController.swift
//  MVC-test
//
//  Created by Aleksandr Moroshovskyi on 02.04.2024.
//

import UIKit

class MyViewController: UIViewController {
    
    @IBOutlet weak var contentView: MyView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        contentView.delegate = self
    }
    
}

extension MyViewController: MyViewDelegate {
    
}

extension MyViewController: MyModelDelegate {
    
    func DataDidLoad() {
        //
    }
}
