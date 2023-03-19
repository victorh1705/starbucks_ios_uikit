//
//  RewardViewController.swift
//  starbucks
//
//  Created by Victor Henrique De Oliveira on 07/03/23.
//

import UIKit

class RewardViewController: BaseUIView {
    
    private lazy var grayBackground: UIView = {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.backgroundColor = .systemGray5
        return view
    }()
    

    override func buildHierarchy() {
        addSubview(grayBackground)
    }
    
    override func setupContraints() {
        NSLayoutConstraint.activate([
            grayBackground.topAnchor.constraint(equalTo: topAnchor),
            grayBackground.leadingAnchor.constraint(equalTo: leadingAnchor),
            grayBackground.trailingAnchor.constraint(equalTo: trailingAnchor),
            grayBackground.bottomAnchor.constraint(equalTo: bottomAnchor),
        ])
    }
    
}
