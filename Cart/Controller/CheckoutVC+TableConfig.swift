//
//  CheckoutVC+TableConfig.swift
//  Cart
//
//  Created by Jan Moravek on 22/02/2018.
//  Copyright © 2018 Jan Moravek. All rights reserved.
//

import UIKit

extension CheckoutViewController: UITableViewDelegate, UITableViewDataSource {
    
    func configCheckoutTable() {
        checkoutTable.allowsSelection = false
        checkoutTable.tableFooterView = UIView()
        checkoutTable.delegate = self
        checkoutTable.dataSource = self
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if checkoutArray.count == 0 {
            checkoutTable.isHidden = true
        }
        return checkoutArray.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = checkoutTable.dequeueReusableCell(withIdentifier: "checkoutCell", for: indexPath) as! CheckoutTableViewCell
        
        cell.checkoutNameCell.text = checkoutArray[indexPath.row].name
        cell.checkoutDescriptionCell.text = checkoutArray[indexPath.row].description
        cell.checkoutQuantityCell.text = String(checkoutArray[indexPath.row].quantity) + "x"
        cell.checkoutPriceCell.text =
            String((Float(checkoutArray[indexPath.row].quantity) * checkoutArray[indexPath.row].price * conversationRate).withTwoDigits)
        
        return cell
    }
    
}
