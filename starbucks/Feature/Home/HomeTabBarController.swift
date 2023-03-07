//
//  HomeTabBarController.swift
//  starbucks
//
//  Created by Victor Henrique De Oliveira on 08/02/23.
//

import UIKit

class HomeTabBarController: UITabBarController {
    
    private lazy var homeViewController: UIViewController = {
        let view = HomeViewController()
        return view
    }()
    
    private lazy var scanViewController: UIViewController = {
        let view = ScanViewController()
        return view
    }()
    
    
    private lazy var orderViewController: UIViewController = {
        let view = OrderViewController()
        return view
    }()
    
    private lazy var giftViewController: UIViewController = {
        let view = GiftViewController()
        return view
    }()
    
    private lazy var offerViewConreoller: OfferViewController = {
        let view = OfferViewController()
        return view
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
        setupTabBar()
    }
    
    private func setupTabBar() {
        
        tabBar.isTranslucent = false
        tabBar.tintColor = .systemGreen
        tabBar.unselectedItemTintColor = .systemGray

        let viewControllers: [UIViewController] = [
            homeViewController,
            scanViewController,
            orderViewController,
            giftViewController,
            offerViewConreoller,
        ]
        
        setViewControllers(
            viewControllers,
            animated: true
        )
        
        viewControllers.forEach { viewController in
            guard let item = viewControllers as? [UITabBarItemProtocol] else { return }
            item.forEach { $0.setupTabBarItem() }
        }
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
