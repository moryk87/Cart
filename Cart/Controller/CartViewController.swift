//
//  CartViewController.swift
//  Cart
//
//  Created by Jan Moravek on 20/02/2018.
//  Copyright © 2018 Jan Moravek. All rights reserved.
//

import UIKit

class CartViewController: UIViewController {

    @IBOutlet weak var navBar: UINavigationItem!
    @IBOutlet weak var navBarButton: UIBarButtonItem!
    @IBOutlet weak var emptyCart: UILabel!
    @IBOutlet weak var cartTable: UITableView!
    @IBOutlet weak var checkoutButton: UIButton!
    
    @IBOutlet var addView: UIView!
    @IBOutlet weak var addTable: UITableView!
    @IBOutlet weak var doneAddButton: UIButton!
    
    let goodsBank = GoodsBank()
    var cartArray = [GoodsLabel] ()
    var goodsToAddArray = [GoodsLabel] ()
    
    var blurVisualEffectView = UIVisualEffectView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        configCartTable()
        configAddTable()
        
        addView.layer.cornerRadius = 5
        doneAddButton.layer.cornerRadius = 5
        
        defaultArraysConfig()
    }
    
    func defaultArraysConfig(){
        cartArray.append(goodsBank.listOfGoods[0])
        goodsToAddArray = goodsBank.listOfGoods
        goodsToAddArray.remove(at: 0)
        
//        cartArray.forEach { print($0.name) }
//        print(cartArray.count)
    }
    
    func showAddMenu() {
        self.view.addSubview(addView)
        self.addView.center = CGPoint(x: self.view.bounds.midX, y: self.view.bounds.midY)
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let destinationNavigationController = segue.destination as! UINavigationController
        let targetVC = destinationNavigationController.topViewController as! CheckoutViewController
        
        targetVC.checkoutArray = cartArray
//        print("targetVC.checkoutArray.count")
//        print(targetVC.checkoutArray.count)
    }
    
    func configBlurEffect() {
        
        let blurEffect = UIBlurEffect(style: .light)
        blurVisualEffectView = UIVisualEffectView(effect: blurEffect)
        blurVisualEffectView.frame = view.bounds
        self.view.addSubview(blurVisualEffectView)
    }
    
   
    //MARK: - IBAction Buttons
    /***************************************************************/
    
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
        
//        print("xxxxxxx")
//        cartArray.forEach { print($0.name) }
//        print("xxxxxxx")
    }
    
}

