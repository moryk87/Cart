//
//  CheckoutVC+PickerConfig.swift
//  Cart
//
//  Created by Jan Moravek on 22/02/2018.
//  Copyright © 2018 Jan Moravek. All rights reserved.
//

import UIKit

extension CheckoutViewController: UIPickerViewDelegate, UIPickerViewDataSource {
    
    func configCurrencyPicker() {
        currencyPicker.delegate = self
        currencyPicker.dataSource = self
        currencyPicker.selectRow(45, inComponent: 0, animated: true)
    }
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return currencyArray.count
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return (currencyArray[row].ticker + "  " + currencyArray[row].name)
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        newCurrency = currencyArray[row].ticker
    }
    
}
