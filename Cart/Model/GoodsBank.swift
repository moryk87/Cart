//
//  GoodsBank.swift
//  Cart
//
//  Created by Jan Moravek on 21/02/2018.
//  Copyright © 2018 Jan Moravek. All rights reserved.
//

import Foundation

class GoodsBank {
    
    var listOfGoods = [GoodsLabel] ()
    
    init() {
        listOfGoods.append(GoodsLabel(name: "Hrasek", description: "350g", price: 0.95, quantity: 1))
        listOfGoods.append(GoodsLabel(name: "Vejce", description: "12ks", price: 2.10, quantity: 1))
        listOfGoods.append(GoodsLabel(name: "Mleko", description: "1,5l", price: 1.30, quantity: 1))
        listOfGoods.append(GoodsLabel(name: "Fazole", description: "415g", price: 0.73, quantity: 1))
    }

}


