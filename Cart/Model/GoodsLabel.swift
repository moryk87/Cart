//
//  GoodsLabel.swift
//  Cart
//
//  Created by Jan Moravek on 21/02/2018.
//  Copyright © 2018 Jan Moravek. All rights reserved.
//

import Foundation

class GoodsLabel {
    
    var name: String
    var description: String
    var price: Float
    var quantity: Int
    
    init(name: String, description: String, price: Float, quantity: Int) {
        self.name = name
        self.description = description
        self.price = price
        self.quantity = quantity
    }
    
}
