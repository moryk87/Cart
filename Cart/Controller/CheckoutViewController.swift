//
//  CheckoutViewController.swift
//  Cart
//
//  Created by Jan Moravek on 20/02/2018.
//  Copyright © 2018 Jan Moravek. All rights reserved.
//

import UIKit
import PKHUD

class CheckoutViewController: UIViewController {
    
    @IBOutlet weak var changeCurrencyButton: UIButton!
    @IBOutlet weak var checkoutTable: UITableView!
    @IBOutlet weak var emptyCheckout: UILabel!
    
    @IBOutlet weak var subTotal: UILabel!
    @IBOutlet weak var subTotalCurrency: UILabel!
    @IBOutlet weak var shipping: UILabel!
    @IBOutlet weak var shippingCurrency: UILabel!
    @IBOutlet weak var total: UILabel!
    @IBOutlet weak var totalCurrency: UILabel!
    
    @IBOutlet var currencyView: UIView!
    @IBOutlet weak var currencyPicker: UIPickerView!
    @IBOutlet weak var cancelButton: UIButton!
    @IBOutlet weak var selectButton: UIButton!
    
    let cartVC = CartViewController()
    let goodsBank = GoodsBank()
    let getCurrencyData = GetCurrencyData()
//    let connectivity = Connectivity()
    let currencyBank = CurrencyBank()
    var currencyArray = [CurrencyLabel] ()
    var checkoutArray = [GoodsLabel] ()
    var blurVisualEffectView = UIVisualEffectView()
    
    var checkoutDelegate: CheckoutViewControllerDelegate?
    
    var conversationRate: Float = 1.0
    var currentCurrency: String = "USD"
    var newCurrency: String = "EUR"
    let basicURL = "http://apilayer.net/api/live?access_key="
    let API_Key = "5a8c85301ed20aa914de5c95f72f3cd3"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        currencyArray = currencyBank.listOfCurrency
        
        configCheckoutTable()
        configCurrencyPicker()
        configPriceLabels()
        configRadius()
        
        getCurrencyData.currencyDelegate = self
    }
    
    func configRadius() {
        currencyView.layer.cornerRadius = 5
        changeCurrencyButton.layer.cornerRadius = 5
        cancelButton.layer.cornerRadius = 5
        selectButton.layer.cornerRadius = 5
    }
 
    func configPriceLabels() {
        var subtotalPrice: Float = 0
        checkoutArray.forEach { subtotalPrice += ($0.price * Float($0.quantity) * conversationRate) }
        
        subTotal.text = String(subtotalPrice.withTwoDigits)
        subTotalCurrency.text = currentCurrency
        
        let shippingPrice: Float = 5 * conversationRate
        shipping.text = String(shippingPrice.withTwoDigits)
        shippingCurrency.text = currentCurrency
        
        total.text = String((subtotalPrice + shippingPrice).withTwoDigits)
        totalCurrency.text = currentCurrency
    }

    func showCurrencyMenu() {
        self.view.addSubview(currencyView)
        self.currencyView.center = CGPoint(x: self.view.bounds.midX, y: self.view.bounds.midY)
    }
    
    func makeRequestURL(APIKey key: String, sourceCurrency: String, targetCurrency: String) -> String {
        return (basicURL + key + "&source=" + sourceCurrency + "&currencies=" + targetCurrency)
    }
    
    
    //MARK: - IBAction Buttons
    /***************************************************************/
    
    @IBAction func backButtonPressed(_ sender: UIBarButtonItem) {
        self.dismiss(animated: true, completion: nil)
    }
    
    @IBAction func changeCurrencyButtonPressed(_ sender: UIButton) {
        configBlurEffect()
        showCurrencyMenu()
    }
    
    
    @IBAction func orderButtonPressed(_ sender: UIButton) {
        if Connectivity.isConnectedToInternet() {
            if checkoutArray.isEmpty == true {
                popUpAlert(condition: "emptyCart", errorCode: 000, description: "")
            } else {
                popUpAlert(condition: "placeOrder", errorCode: 000, description: "")
            }
        } else {
            popUpAlert(condition: "httpResponse", errorCode: 503, description: "No internet connection")
        }
    }
    
    @IBAction func cancelButtonPressed(_ sender: UIButton) {
        currencyView.removeFromSuperview()
        blurVisualEffectView.removeFromSuperview()
    }
    
    @IBAction func selectButtonPressed(_ sender: UIButton) {
        currencyView.removeFromSuperview()
        blurVisualEffectView.removeFromSuperview()
        
        let requestedURL = makeRequestURL(APIKey: API_Key, sourceCurrency: "USD", targetCurrency: newCurrency)
        let requestedPair = "USD" + newCurrency
        getCurrencyData.downloadRate(url: requestedURL, pair: requestedPair)
        HUD.show(.progress)
    }
    
}
