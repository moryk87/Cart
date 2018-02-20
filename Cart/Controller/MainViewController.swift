//
//  MainViewController.swift
//  Cart
//
//  Created by Jan Moravek on 20/02/2018.
//  Copyright © 2018 Jan Moravek. All rights reserved.
//

import UIKit

class MainViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {

    @IBOutlet weak var navBar: UINavigationItem!
    @IBOutlet weak var navBarButton: UIBarButtonItem!
    @IBOutlet weak var tableCart: UITableView!
    @IBOutlet weak var checkoutButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()

//        configNavBar()
//        configButton()
        
        tableCart.delegate = self
        tableCart.dataSource = self
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cartCell", for: indexPath) as! CartTableViewCell
        
        return cell
    }

//    func configNavBar() {
//        navBar.title = "cart"
//        navBar.rightBarButtonItem = UIBarButtonItem(title: "Add", style: .plain, target: self, action: #selector(navBarRightButtonPressed))
//        navBar.rightBarButtonItem?.tintColor = UIColor.white
//    }
//    
//    func configButton() {
//        checkoutButton.setTitleColor(UIColor.white, for: .normal)
//        checkoutButton.setTitle("K objednavce", for: .normal)
//        checkoutButton.titleLabel?.font = UIFont(name: "System", size: 25)
//        checkoutButton.addTarget(self, action:#selector(self.checkoutButtonPressed), for: .touchUpInside)
//        checkoutButton.backgroundColor = UIColor(red:0.33, green:0.38, blue:0.50, alpha:1.0)
////        D66260
//    }
//    
//    @objc func checkoutButtonPressed() {
//        print("checkoutButtonPressed")
//        performSegue(withIdentifier: "mainToCheckout", sender: self)
//    }
//    
//    @objc func navBarRightButtonPressed() {
//        print("navBarButtonPressed")
//    }

    
    @IBAction func navBarButtonPressed(_ sender: UIBarButtonItem) {
        performSegue(withIdentifier: "mainToCheckout", sender: self)
    }
    
    @IBAction func checkoutButtonPressed(_ sender: UIButton) {
        performSegue(withIdentifier: "mainToCheckout", sender: self)
    }
    
}

