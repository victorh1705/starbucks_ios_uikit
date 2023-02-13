//
//  HomeTabBarController.swift
//  starbucks
//
//  Created by Victor Henrique De Oliveira on 08/02/23.
//

import UIKit

class HomeTabBarController: UITabBarController {
    
    private lazy var homeViewController: UINavigationController = {
        let view = UINavigationController(rootViewController: HomeViewController())
        return view
    }()
    
    private lazy var scanViewController: UINavigationController = {
        let view = UINavigationController(rootViewController: ScanViewController())
        return view
    }()
    
    
    private lazy var orderViewController = {
        let view = UINavigationController(rootViewController: OrderViewController())
        return view
    }()
    
    private lazy var giftViewController: UINavigationController = {
        let view = UINavigationController(rootViewController: GiftViewController())
        return view
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
        setupTabBar()
    }
    
    private func setupTabBar() {
        
        tabBar.isTranslucent = false
        
        setViewControllers(
            [
                homeViewController,
                scanViewController,
                orderViewController,
                giftViewController,
            ],
            animated: true
        )
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
