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
//        print("added to cart")
        let indexPath = self.addTable.indexPathForRow(at: didSelect.center)!
        
//        print(indexPath.row)
        self.cartArray.append(goodsToAddArray[indexPath.row])
        self.goodsToAddArray.remove(at: indexPath.row)
        self.cartTable.isHidden = false
        self.addTable.reloadData()
        
//        print("oooooo")
//        cartArray.forEach { print($0.name) }
//        print("oooooo")
    }
    
}

extension CartViewController: CartTableViewCellDelegate {
    func didChangeAmountOfGoods(didSelect: SwipeTableViewCell, condition: String) {
        let indexPath = self.cartTable.indexPathForRow(at: didSelect.center)!
        
        if condition == "more" {
            cartArray[indexPath.row].quantity += 1
//            print("more")
        } else {
            if cartArray[indexPath.row].quantity >= 2 {
                cartArray[indexPath.row].quantity -= 1
//                print("less")
            }
        }
        
        self.cartTable.reloadData()
    }
    
}
