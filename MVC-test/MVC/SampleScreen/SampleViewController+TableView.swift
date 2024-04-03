//
//  SampleViewController+TableView.swift
//  MVC-test
//
//  Created by Aleksandr Moroshovskyi on 02.04.2024.
//

import UIKit

extension SampleViewController: UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return model.someData.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        
        //якщо стандартна cell
        /*
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "SampleCell")
        else {
            assertionFailure()
            return UITableViewCell()
        }
        
        cell.textLabel?.text = model.someData[indexPath.row]        
        
        return cell
        */
        
        
        //custom cell
        /*
        var customCell: SampleTableViewCell? = tableView.dequeueReusableCell(withIdentifier: SampleTableViewCell.idintifier) as? SampleTableViewCell
        
        if customCell == nil {
            customCell = SampleTableViewCell(style: .default, reuseIdentifier: SampleTableViewCell.idintifier)
        }
        
        guard let cell = customCell
        else {
            assertionFailure()
            return UITableViewCell()
        }
        
        let item = model.someData[indexPath.row]
        
        cell.myLable.text = item
        
        return cell
         */
        
        
        //після реєстрації cell в файлі ViewController
        /*
         contentView.tableView.register(
             SampleTableViewCell.self,
             forCellReuseIdentifier: SampleTableViewCell.idintifier)
         */
        //код вишлядає так:
        /*
        guard let cell = tableView.dequeueReusableCell(withIdentifier: SampleTableViewCell.idintifier) as? SampleTableViewCell
        else {
            assertionFailure()
            return UITableViewCell()
        }
        
        let item = model.someData[indexPath.row]
        
        cell.myLable.text = item
        
        return cell
         */
        
        //використовуємо комірку з xib/nib. Код той самий, просто інший ідентифікатор
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "SampleNibTableViewCell") as? SampleNibTableViewCell
        else {
             assertionFailure()
            return UITableViewCell()
        }
        
        let item = model.someData[indexPath.row]
        
        cell.nameLabel.text = item
        
        //cтарий підхід з protocol/delegate
        cell.delegate = self
        
        //замість protocol/delegate краще використовувати Closures
        cell.buttonTamCompletion = { [weak self, indexPath] in
            guard let self = self else { return }
            let item = self.model.someData[indexPath.row]
            debugPrint("\(item) - \(indexPath.row)")
        }
        
        cell.textDidChangeCompletion = { [weak self, indexPath] text in
            guard let self = self else { return }
            var item = self.model.someData[indexPath.row]
            debugPrint("\(indexPath.row) - \(text)")
        }
        
        return cell
    }
}

extension SampleViewController: UITableViewDelegate {
    
}

extension SampleViewController: SampleNibTableViewCellDelegate {
    
    func someButtonDidTap(in cell: UITableViewCell) {
        if let indexPath = contentView.tableView.indexPath(for: cell) {
            
            let item = model.someData[indexPath.row]
            debugPrint("someButtonDidTap")
        }
    }
}
