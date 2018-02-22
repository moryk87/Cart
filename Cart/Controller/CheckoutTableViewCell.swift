//
//  CheckoutTableViewCell.swift
//  Cart
//
//  Created by Jan Moravek on 22/02/2018.
//  Copyright © 2018 Jan Moravek. All rights reserved.
//

import UIKit


class CheckoutTableViewCell: UITableViewCell {
    
    @IBOutlet weak var checkoutNameCell: UILabel!
    @IBOutlet weak var checkoutDescriptionCell: UILabel!
    @IBOutlet weak var checkoutQuantityCell: UILabel!
    @IBOutlet weak var checkoutPriceCell: UILabel!

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

}
