//
//  CartViewController.swift
//  Cart
//
//  Created by Jan Moravek on 20/02/2018.
//  Copyright © 2018 Jan Moravek. All rights reserved.
//

import UIKit


class CartViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {

    @IBOutlet weak var navBar: UINavigationItem!
    @IBOutlet weak var navBarButton: UIBarButtonItem!
    @IBOutlet weak var cartTable: UITableView!
    @IBOutlet weak var checkoutButton: UIButton!
    
    @IBOutlet var addView: UIView!
    @IBOutlet weak var addTable: UITableView!
    @IBOutlet weak var doneAddButton: UIButton!
    
    
    let allGoods = GoodsBank()
    var cartArray = [GoodsLabel] ()
    var goodsToAddArray = [GoodsLabel] ()
    
    var blurVisualEffectView = UIVisualEffectView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        configCartTable()
        configAddTable()
        
        addView.layer.cornerRadius = 5
        doneAddButton.layer.cornerRadius = 5
        
        cartArray = allGoods.listOfGoods
        cartArray.forEach { print($0.inCart) }
        print(cartArray.count)
    }
    
    func showAddMenu() {
        self.view.addSubview(addView)
        addView.center = self.view.center
    }

    
    @IBAction func navBarButtonPressed(_ sender: UIBarButtonItem) {
        configBlurEffect()
        showAddMenu()
        addTable.reloadData()
    }
    
    @IBAction func checkoutButtonPressed(_ sender: UIButton) {
        performSegue(withIdentifier: "mainToCheckout", sender: self)
    }
    
    @IBAction func doneAddButtonPressed(_ sender: UIButton) {
        cartTable.reloadData()
        addView.removeFromSuperview()
        blurVisualEffectView.removeFromSuperview()
        
        print("xxxxxxx")
        cartArray.forEach { print($0.inCart) }
        print("xxxxxxx")
    }
    
    
    
}

