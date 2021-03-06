//
//  CartVC+TableConfig.swift
//  Cart
//
//  Created by Jan Moravek on 20/02/2018.
//  Copyright © 2018 Jan Moravek. All rights reserved.
//

import UIKit
import SwipeCellKit

extension CartViewController: UITableViewDataSource, UITableViewDelegate, SwipeTableViewCellDelegate {
    
    func configCartTable() {
        cartTable.tableFooterView = UIView()
        cartTable.delegate = self
        cartTable.dataSource = self
    }
    
    func configAddTable() {
        addTable.tableFooterView = UIView()
        addTable.delegate = self
        addTable.dataSource = self
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        if tableView == self.cartTable {
            if cartArray.count == 0 {
                cartTable.isHidden = true
            }
            return cartArray.count
        } else {
            if goodsToAddArray.count == 0 {
                addTable.isHidden = true
            }
            return goodsToAddArray.count
        }
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        if tableView == self.cartTable {
            
            let cell = tableView.dequeueReusableCell(withIdentifier: "cartCell", for: indexPath) as! CartTableViewCell
            
            cell.nameCell.text = cartArray[indexPath.row].name
            cell.descriptionCell.text = cartArray[indexPath.row].description
            cell.priceCell.text =
                String(Float(cartArray[indexPath.row].quantity) * cartArray[indexPath.row].price) + " USD"
            cell.quantityCell.text = String(cartArray[indexPath.row].quantity) + "x"
            cell.delegate = self
            cell.cartDelegate = self
            
            return cell
        } else {
            let cell = tableView.dequeueReusableCell(withIdentifier: "addCell", for: indexPath) as! AddTableViewCell
            
            cell.addNameCell.text = goodsToAddArray[indexPath.row].name
            cell.addDescriptionCell.text = goodsToAddArray[indexPath.row].description
            cell.addPriceCell.text = String(goodsToAddArray[indexPath.row].price) + " USD"
            cell.addDelegate = self
            
            return cell
        }
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        cartTable.deselectRow(at: indexPath, animated: true)
    }
    
    func tableView(_ tableView: UITableView, editActionsForRowAt indexPath: IndexPath, for orientation: SwipeActionsOrientation) -> [SwipeAction]? {
        guard orientation == .right else { return nil }
        
        let deleteAction = SwipeAction(style: .destructive, title: "Delete") { action, indexPath in
            
            self.cartArray[indexPath.row].quantity = 1
            self.goodsToAddArray.append(self.cartArray[indexPath.row])
            self.cartArray.remove(at: indexPath.row)
            self.cartTable.reloadData()
            self.addTable.isHidden = false
        }
        return [deleteAction]
    }
    
}
