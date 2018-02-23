//
//  AddTableViewCell.swift
//  Cart
//
//  Created by Jan Moravek on 21/02/2018.
//  Copyright © 2018 Jan Moravek. All rights reserved.
//

import UIKit

protocol AddTableViewCellDelegate {
    func didAddGoodsToCart(didSelect: AddTableViewCell)
}

class AddTableViewCell: UITableViewCell {
    
    var addDelegate: AddTableViewCellDelegate?
    
    @IBOutlet weak var addNameCell: UILabel!
    @IBOutlet weak var addDescriptionCell: UILabel!
    @IBOutlet weak var addPriceCell: UILabel!
    @IBOutlet weak var addGoodsButton: UIButton!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        addGoodsButton.layer.cornerRadius = 5
    }
    
    @IBAction func addGoodsButtonPressed(_ sender: UIButton) {
        self.addDelegate?.didAddGoodsToCart(didSelect: self)
    }

}
