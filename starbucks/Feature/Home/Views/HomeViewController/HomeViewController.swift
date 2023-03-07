//
//  HomeViewController.swift
//  starbucks
//
//  Created by Victor Henrique De Oliveira on 08/02/23.
//

import UIKit

class HomeViewController: UIViewController {
    
    private lazy var scrollView: UIScrollView = {
        let view = UIScrollView()
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    private lazy var stackView: UIStackView = {
        let view = UIStackView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.axis = .vertical
        view.spacing = 8
        return view
    }()
    
    private lazy var homeHeaderView: HomeHeaderView = {
        let view = HomeHeaderView()
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        buildHierarchy()
        setupContraints()
    }
    
    
    // MARK: - setup
    
    func buildHierarchy(){
        view.addSubview(scrollView)
        
        scrollView.addSubview(stackView)
        
        stackView.addArrangedSubview(homeHeaderView)
    }
    
    func setupContraints(){
        NSLayoutConstraint.activate([
            scrollView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor),
            scrollView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            scrollView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            scrollView.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor),
            
            stackView.topAnchor.constraint(equalTo: scrollView.topAnchor, constant: 8),
            stackView.leadingAnchor.constraint(equalTo: scrollView.leadingAnchor, constant: 8),
            stackView.trailingAnchor.constraint(equalTo: scrollView.trailingAnchor, constant: -8),
            stackView.bottomAnchor.constraint(equalTo: scrollView.bottomAnchor, constant: -8),
        ])
    }
    
}

extension HomeViewController: UITabBarItemProtocol {
    func setupTabBarItem() {
        setupTabBarItem(icon: "house.fill", title: "Home")
    }
}
