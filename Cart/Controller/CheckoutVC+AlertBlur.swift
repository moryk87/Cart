//
//  CheckoutVC+AlertBlur.swift
//  Cart
//
//  Created by Jan Moravek on 21/02/2018.
//  Copyright © 2018 Jan Moravek. All rights reserved.
//

import UIKit

protocol CheckoutViewControllerDelegate {
    func orderPlaced(didPlaced: Bool)
}

extension CheckoutViewController {
    
    func popUpAlert(condition: String, errorCode: Int, description: String) {

        configBlurEffect()
        var saveAlert = UIAlertController()

        if condition == "emptyCart" {
            saveAlert = UIAlertController(title: "Empty cart", message: "Please, add some goods", preferredStyle: UIAlertControllerStyle.alert)
        } else if condition == "placeOrder" {
            saveAlert = UIAlertController(title: "Thank you!", message: "Your order was placed", preferredStyle: UIAlertControllerStyle.alert)
        } else if condition == "httpResponse" {
            saveAlert = UIAlertController(title: "Error code: \(errorCode)", message: description, preferredStyle: UIAlertControllerStyle.alert)
        }

        saveAlert.addAction(UIAlertAction(title: "Ok", style: .default, handler: { (action: UIAlertAction!) in
            if condition == "placeOrder" {
                
                self.checkoutDelegate?.orderPlaced(didPlaced: true)
                self.dismiss(animated: true, completion: nil)
            }
            self.blurVisualEffectView.removeFromSuperview()
        }))

        saveAlert.view.tintColor = UIColor(red:0.33, green:0.38, blue:0.50, alpha:1.0)
        
        present(saveAlert, animated: true, completion: nil)
    }
    
    func configBlurEffect() {
        
        let blurEffect = UIBlurEffect(style: .light)
        blurVisualEffectView = UIVisualEffectView(effect: blurEffect)
        blurVisualEffectView.frame = view.bounds
        self.view.addSubview(blurVisualEffectView)
    }
    
}
