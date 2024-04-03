//
//  SampleTableViewCell.swift
//  MVC-test
//
//  Created by Aleksandr Moroshovskyi on 03.04.2024.
//

import UIKit

class SampleTableViewCell: UITableViewCell {
    
    static let idintifier = "SampleTableViewCell"
    
    lazy var myLable: UILabel = {
        let label = UILabel()
        label.font = .systemFont(ofSize: 24)
        label.backgroundColor = .cyan
        
        contentView.addSubview(label)
        
        return label
    }()
    
    //якщо реалізація комірки буде у коді
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        
        myLable.frame = CGRect(x: 10, y: 10, width: 200, height: 34)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
