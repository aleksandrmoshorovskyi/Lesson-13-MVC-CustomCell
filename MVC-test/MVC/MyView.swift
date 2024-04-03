//
//  MyView.swift
//  MVC-test
//
//  Created by Aleksandr Moroshovskyi on 02.04.2024.
//

import UIKit

class MyView: UIView {
    var delegate: MyViewDelegate? = nil
    
    
}

protocol MyViewDelegate: AnyObject {
    
}
