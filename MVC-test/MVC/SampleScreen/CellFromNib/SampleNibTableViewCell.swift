//
//  SampleNibTableViewCell.swift
//  MVC-test
//
//  Created by Aleksandr Moroshovskyi on 03.04.2024.
//

import UIKit

protocol SampleNibTableViewCellDelegate: AnyObject {
    
    func someButtonDidTap(in cell: UITableViewCell)
}

class SampleNibTableViewCell: UITableViewCell {
    
    @IBOutlet weak var textField: UITextField!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var someButton: UIButton!
    
    @IBAction func someButtonAction(_ sender: Any) {
        debugPrint("SampleNibTableViewCell -> someButtonAction")
        
        //використовуємо щось одна, або protocol/delegate
        delegate?.someButtonDidTap(in: self)
        
        //або кращий варіант Closure
        buttonTamCompletion?()
    }
    
    //для взаємодії з ViewController, напрриклад
    weak var delegate: SampleNibTableViewCellDelegate?
    
    //замість protocol/delegate краще використовувати Closures
    var buttonTamCompletion: (() -> ())?
    var textDidChangeCompletion: ((String) -> ())?
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        //налаштування cell, яка з xib/nib
        //якщо з код, то 
        /*
         override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
             super.init(style: style, reuseIdentifier: reuseIdentifier)
             
             myLable.frame = CGRect(x: 10, y: 10, width: 200, height: 34)
         }
         */
        
        //з файлу
        /*
         override func awakeFromNib() {
         
         }
         */
        
        
        //взаємодія з TextField
        textField.addTarget(self, action: #selector(textFieldDidChange(_:)), for: .editingChanged)
    }
    
    @objc func textFieldDidChange(_ textField: UITextField) {
        let text = textField.text ?? ""
        textDidChangeCompletion?(text)
    }
}
