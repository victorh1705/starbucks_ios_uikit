//
//  BaseViewController.swift
//  starbucks
//
//  Created by Victor Henrique De Oliveira on 07/03/23.
//

import UIKit

class BaseUIView: UIView {
    
    override init(frame: CGRect) {
        super.init(frame: .zero)
        buildHierarchy()
        setupContraints()
        aditionalSetup()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
    // MARK: - setup
    
    func buildHierarchy() {
        fatalError("Must be implemented")
    }
    
    func setupContraints() {
        fatalError("Must be implemented")
    }
    
    func aditionalSetup() {
    }
}
