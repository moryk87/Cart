//
//  CheckoutVC+GetCurrencyDelegate.swift
//  Cart
//
//  Created by Jan Moravek on 22/02/2018.
//  Copyright © 2018 Jan Moravek. All rights reserved.
//

import UIKit
import PKHUD

extension CheckoutViewController: GetCurrencyDataDelegate {
    
    func newConversationRateData(newConversationRate: Float) {
        HUD.hide()
        print(newConversationRate)
        conversationRate = newConversationRate
        currentCurrency = "EUR"
        configPriceLabels()
        checkoutTable.reloadData()
    }
    
    func makePopupAlert(errorCode: Int, description: String) {
        HUD.hide()
        popUpAlert(condition: "httpResponse", errorCode: errorCode, description: description)
    }    
    
}
