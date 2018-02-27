//
//  CartVC+CellDelegates.swift
//  Cart
//
//  Created by Jan Moravek on 21/02/2018.
//  Copyright © 2018 Jan Moravek. All rights reserved.
//

import Foundation
import SwipeCellKit

extension CartViewController: AddTableViewCellDelegate {
    
    func didAddGoodsToCart(didSelect: AddTableViewCell) {
        let indexPath = self.addTable.indexPathForRow(at: didSelect.center)!
        
        self.cartArray.append(goodsToAddArray[indexPath.row])
        self.goodsToAddArray.remove(at: indexPath.row)
        self.cartTable.isHidden = false
        self.addTable.reloadData()
    }

}

extension CartViewController: CartTableViewCellDelegate {
    
    func didChangeAmountOfGoods(didSelect: SwipeTableViewCell, condition: String) {
        let indexPath = self.cartTable.indexPathForRow(at: didSelect.center)!
        
        if condition == "more" {
            cartArray[indexPath.row].quantity += 1
        } else {
            if cartArray[indexPath.row].quantity >= 2 {
                cartArray[indexPath.row].quantity -= 1
            }
        }
        self.cartTable.reloadData()
    }
    
}

extension CartViewController: CheckoutViewControllerDelegate {
    
    func orderPlaced(didPlaced: Bool) {
        self.cartArray.removeAll()
        self.goodsToAddArray = self.goodsBank.listOfGoods
        
        self.cartTable.reloadData()
        self.addTable.reloadData()
    }
    
}
