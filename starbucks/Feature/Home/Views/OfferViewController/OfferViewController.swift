//
//  OrderViewController.swift
//  starbucks
//
//  Created by Victor Henrique De Oliveira on 07/03/23.
//

import UIKit

class OfferViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
    }
    
    
    /*
     // MARK: - Navigation
     
     // In a storyboard-based application, you will often want to do a little preparation before navigation
     override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
     // Get the new view controller using segue.destination.
     // Pass the selected object to the new view controller.
     }
     */
    
}

extension OfferViewController: UITabBarItemProtocol {
    func setupTabBarItem() {
        setupTabBarItem(icon: "sparkles", title: "Order", tag: 2)
        title = "Order"
    }
}
