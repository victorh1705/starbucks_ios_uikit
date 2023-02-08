//
//  OrderViewController.swift
//  starbucks
//
//  Created by Victor Henrique De Oliveira on 08/02/23.
//

import UIKit

class OrderViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        setupTabBarItem(icon: "arrow.up.bin.fill", title: "Order", tag: 2)
        title = "Order"
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
