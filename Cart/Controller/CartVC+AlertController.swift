//
//  CartVC+AlertController.swift
//  Cart
//
//  Created by Jan Moravek on 21/02/2018.
//  Copyright © 2018 Jan Moravek. All rights reserved.
//

import UIKit

extension CartViewController {
    
//    func popUpAlert(condition: String, statusCode: Int) {
//
//        configBlurEffect()
//        var saveAlert = UIAlertController()
//
//        if condition == "empty" {
//            saveAlert = UIAlertController(title: "Empty login or password", message: "Login and password are mandatory!", preferredStyle: UIAlertControllerStyle.alert)
//        } else if condition == "glitch" {
//            saveAlert = UIAlertController(title: "Something is wrong", message: "We are working on it! :-)", preferredStyle: UIAlertControllerStyle.alert)
//        } else if condition == "httpResponse" {
//            saveAlert = UIAlertController(title: "HTTTP response:", message: "Status Code: \(statusCode)", preferredStyle: UIAlertControllerStyle.alert)
//        }
//
//        saveAlert.addAction(UIAlertAction(title: "Ok", style: .default, handler: { (action: UIAlertAction!) in self.blurVisualEffectView.removeFromSuperview()
//        }))
//thank you for purchase
//        present(saveAlert, animated: true, completion: nil)
//    }
    
    func configBlurEffect() {
        
        let blurEffect = UIBlurEffect(style: .light)
        blurVisualEffectView = UIVisualEffectView(effect: blurEffect)
        blurVisualEffectView.frame = view.bounds
        self.view.addSubview(blurVisualEffectView)
    }
    
    
}
