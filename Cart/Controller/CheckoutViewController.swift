//
//  CheckoutViewController.swift
//  Cart
//
//  Created by Jan Moravek on 20/02/2018.
//  Copyright © 2018 Jan Moravek. All rights reserved.
//

import UIKit
//import PKHUD

class CheckoutViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    @IBOutlet weak var checkoutTable: UITableView!
    @IBOutlet weak var emptyCheckout: UILabel!
    
    @IBOutlet weak var subTotal: UILabel!
    @IBOutlet weak var subTotalCurrency: UILabel!
    @IBOutlet weak var shipping: UILabel!
    @IBOutlet weak var shippingCurrency: UILabel!
    @IBOutlet weak var total: UILabel!
    @IBOutlet weak var totalCurrency: UILabel!
    
    let cartVC = CartViewController()
    var checkoutArray = [GoodsLabel] ()
    var conversationRate: Float = 1.0
    var currentCurrency: String = "USD"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        configCheckoutTable()
        configPriceLabels(currency: currentCurrency)
    }

    func configCheckoutTable() {
        checkoutTable.allowsSelection = false
        checkoutTable.tableFooterView = UIView()
        checkoutTable.delegate = self
        checkoutTable.dataSource = self
    }
    
    func configPriceLabels(currency: String) {
        var subtotalPrice: Float = 0
        
//        checkoutArray.forEach { subtotalPrice = subtotalPrice + ($0.price) }
        checkoutArray.forEach { subtotalPrice += ($0.price) }
        print(subtotalPrice)
        
        subTotal.text = String(subtotalPrice)
        subTotalCurrency.text = currency
        
        let shippingPrice: Float = 5 * conversationRate
        shipping.text = String(shippingPrice)
        shippingCurrency.text = currency
        
        total.text = String(subtotalPrice + shippingPrice)
        totalCurrency.text = currency
        
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if checkoutArray.count == 0 {
//            emptyCheckout.isHidden = false
            checkoutTable.isHidden = true
        }
        return checkoutArray.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = checkoutTable.dequeueReusableCell(withIdentifier: "checkoutCell", for: indexPath) as! CheckoutTableViewCell
        
        cell.checkoutNameCell.text = checkoutArray[indexPath.row].name
        cell.checkoutDescriptionCell.text = checkoutArray[indexPath.row].description
        cell.checkoutQuantityCell.text = String(checkoutArray[indexPath.row].quantity) + "x"
        cell.checkoutPriceCell.text =
            String(Float(checkoutArray[indexPath.row].quantity) * checkoutArray[indexPath.row].price * conversationRate)
        
        return cell
    }
    
    
    @IBAction func backButtonPressed(_ sender: UIBarButtonItem) {
        self.dismiss(animated: true, completion: nil)
    }
    
    @IBAction func changeCurrencyButtonPressed(_ sender: UIButton) {
    }
    
    @IBAction func payButtonPressed(_ sender: UIButton) {
    }
    
    
}
