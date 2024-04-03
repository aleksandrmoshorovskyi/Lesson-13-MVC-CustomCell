//
//  MyViewController+TableView.swift
//  MVC-test
//
//  Created by Aleksandr Moroshovskyi on 02.04.2024.
//

import UIKit

extension MyViewController: UITableViewDelegate, UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return 1
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "MyCell", for: indexPath)
        
        return cell
    }
}
