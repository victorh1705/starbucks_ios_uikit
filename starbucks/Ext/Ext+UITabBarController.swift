//
//  Ext+UITabBarController.swift
//  starbucks
//
//  Created by Victor Henrique De Oliveira on 06/03/23.
//

import UIKit

extension UITabBarController{
    typealias TabBarItem = UITabBarItemProtocol & UIViewController
    
    func setViewControllers(items: [TabBarItem]?, animated: Bool) {
        self.setViewControllers(items, animated: animated)
    }
    
}
