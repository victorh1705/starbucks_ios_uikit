//
//  HomeTabBarController.swift
//  starbucks
//
//  Created by Victor Henrique De Oliveira on 08/02/23.
//

import UIKit

class HomeTabBarController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        setupTabBar()
    }
    
    func setupTabBar() {
        
        viewControllers = [
            UINavigationController(rootViewController: HomeViewController()),
            UINavigationController(rootViewController: ScanViewController()),
            UINavigationController(rootViewController: OrderViewController()),
            UINavigationController(rootViewController: GiftViewController()),
        ]
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
