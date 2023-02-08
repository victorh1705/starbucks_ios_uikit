//
//  Ext+UIViewController.swift
//  starbucks
//
//  Created by Victor Henrique De Oliveira on 08/02/23.
//

import UIKit

extension UIViewController {
   
    func setupTabBarItem(icon imageName: String, title: String, tag: Int = 0) {
        let configuration = UIImage.SymbolConfiguration(scale: .large)
        let image = UIImage(systemName: imageName, withConfiguration: configuration)
        tabBarItem = UITabBarItem(title: title, image: image, tag: tag)
    }
}
