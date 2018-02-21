//
//  CartVC+AddTableVCDelegate.swift
//  Cart
//
//  Created by Jan Moravek on 21/02/2018.
//  Copyright © 2018 Jan Moravek. All rights reserved.
//

import Foundation

extension CartViewController: AddTableViewCellDelegate {
    
    func didAddGoodsToCart(didSelect: AddTableViewCell) {
        print("added to cart")
        let indexPath = self.addTable.indexPathForRow(at: didSelect.center)!
        
        print(indexPath.row)
        self.cartArray[indexPath.row].inCart = true
        self.addTable.reloadData()
        
        print("oooooo")
        cartArray.forEach { print($0.inCart) }
        print("oooooo")
    }
    
}
