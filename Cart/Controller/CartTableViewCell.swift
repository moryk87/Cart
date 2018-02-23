//
//  CartTableViewCell.swift
//  Cart
//
//  Created by Jan Moravek on 20/02/2018.
//  Copyright © 2018 Jan Moravek. All rights reserved.
//

import UIKit
import SwipeCellKit

protocol CartTableViewCellDelegate {
    func didChangeAmountOfGoods(didSelect: SwipeTableViewCell, condition: String)
}

class CartTableViewCell: SwipeTableViewCell {
    
    @IBOutlet weak var nameCell: UILabel!
    @IBOutlet weak var descriptionCell: UILabel!
    @IBOutlet weak var priceCell: UILabel!
    @IBOutlet weak var quantityCell: UILabel!
    
    var cartDelegate:CartTableViewCellDelegate?

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    @IBAction func lessButtonPressed(_ sender: UIButton) {
        self.cartDelegate?.didChangeAmountOfGoods(didSelect: self, condition: "less")
    }
    
    @IBAction func moreButtonPressed(_ sender: UIButton) {
        self.cartDelegate?.didChangeAmountOfGoods(didSelect: self, condition: "more")
    }

}
