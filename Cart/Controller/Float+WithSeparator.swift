//
//  Float+WithSeparator.swift
//  Cart
//
//  Created by Jan Moravek on 23/02/2018.
//  Copyright © 2018 Jan Moravek. All rights reserved.
//

import Foundation

extension Float {
    var withTwoDigits:String {
        let formatter = NumberFormatter()
        formatter.groupingSeparator = "\u{2009}"
        formatter.numberStyle = .decimal
        formatter.maximumFractionDigits = 2
        formatter.minimumFractionDigits = 2
        return formatter.string(from: self as NSNumber)!
    }
}
