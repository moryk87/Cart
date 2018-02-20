////
////  MV+UIConfig.swift
////  Cart
////
////  Created by Jan Moravek on 20/02/2018.
////  Copyright © 2018 Jan Moravek. All rights reserved.
////
//
//import UIKit
//
//extension MainViewController {
//    
//    func configNavBar() {
//        let navItem = UINavigationItem(title: "cart")
//        navItem.
//        navBar.setItems([navItem], animated: false)
//        navBar.he
//        navBar.translatesAutoresizingMaskIntoConstraints = false
//        self.view.addSubview(navBar)
//    }
//    
//    func configTableCart() {
//        tableCart.backgroundColor = UIColor.cyan
//
//    }
//    
//    func configButton() {
//        checkoutButton.setTitleColor(UIColor.white, for: .normal)
//        checkoutButton.setTitle("K objednavce", for: .normal)
//        checkoutButton.titleLabel?.font = UIFont(name: "System", size: 25)
////        checkoutButton.addTarget(self, action:#selector(self.buttonPressed), for: .touchUpInside)
////        checkoutButton.backgroundColor = .clear
//        checkoutButton.backgroundColor = UIColor(red:0.33, green:0.38, blue:0.50, alpha:1.0)
////        checkoutButton.layer.cornerRadius = 5
////        checkoutButton.layer.borderWidth = 2
////        checkoutButton.layer.borderColor = UIColor.black.cgColor
////        checkoutButton.contentEdgeInsets = UIEdgeInsetsMake(0, 5, 0, 5)
//        checkoutButton.translatesAutoresizingMaskIntoConstraints = false
//    }
//
//    
//    func setupConstraints() {
//        navBar.leadingAnchor.constraint(equalTo: view.leadingAnchor).isActive = true
//        navBar.trailingAnchor.constraint(equalTo: view.trailingAnchor).isActive = true
//        navBar.topAnchor.constraint(equalTo: view.topAnchor).isActive = true
//        navBar.heightAnchor.constraint(equalToConstant: 64).isActive = true
//        
//        tableCart.leadingAnchor.constraint(equalTo: view.leadingAnchor).isActive = true
//        tableCart.trailingAnchor.constraint(equalTo: view.trailingAnchor).isActive = true
//        tableCart.topAnchor.constraint(equalTo: navBar.bottomAnchor).isActive = true
////        tableCart.bottomAnchor.constraint(equalTo: checkoutButton.topAnchor).isActive = true
//        tableCart.bottomAnchor.constraint(equalTo: view.bottomAnchor).isActive = true
//        
////        checkoutButton.leadingAnchor.constraint(equalTo: view.leadingAnchor).isActive = true
////        checkoutButton.trailingAnchor.constraint(equalTo: view.trailingAnchor).isActive = true
////        checkoutButton.heightAnchor.constraint(equalTo: view.heightAnchor, multiplier: 0.1).isActive = true
////        checkoutButton.bottomAnchor.constraint(equalTo: view.bottomAnchor).isActive = true
//    }
//}
//
