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
        view.alignment = .fill
        view.spacing = 8
        return view
    }()
    
    private lazy var homeHeaderView: HomeHeaderView = {
        let view = HomeHeaderView()
        view.translatesAutoresizingMaskIntoConstraints = false
        
//        view.layoutMargins = UIEdgeInsets(top: 0, left: 8, bottom: 0, right: -8)
        
        return view
    }()
    
    private lazy var rewardView: RewardViewController = {
        let view = RewardViewController()
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
        stackView.addArrangedSubview(rewardView)
    }
    
    func setupContraints(){
        NSLayoutConstraint.activate([
            scrollView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor),
            scrollView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            scrollView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            scrollView.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor),
            
            stackView.topAnchor.constraint(equalTo: scrollView.topAnchor),
            stackView.leadingAnchor.constraint(equalTo: scrollView.leadingAnchor),
            stackView.trailingAnchor.constraint(equalTo: scrollView.trailingAnchor),
            stackView.bottomAnchor.constraint(lessThanOrEqualTo: scrollView.bottomAnchor),
            
            rewardView.heightAnchor.constraint(equalToConstant: 300),
//            rewardView.widthAnchor.constraint(equalToConstant: 400),
//            rewardView.leadingAnchor.constraint(equalTo: scrollView.leadingAnchor),
//            rewardView.trailingAnchor.constraint(equalTo: scrollView.trailingAnchor),
        ])
    }
    
}

extension HomeViewController: UITabBarItemProtocol {
    func setupTabBarItem() {
        setupTabBarItem(icon: "house.fill", title: "Home")
    }
}
