//
//  HomeHeaderView.swift
//  starbucks
//
//  Created by Victor Henrique De Oliveira on 13/02/23.
//

import UIKit

class HomeHeaderView: UIView {
    
    private lazy var grettingLabel: UILabel = {
        let view = UILabel()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.font = UIFont.preferredFont(forTextStyle: .largeTitle)
        view.text = "Good afternoon, Victor"
        view.numberOfLines = 0
        view.lineBreakMode = .byWordWrapping
        return view
    }()
    
    private lazy var stackView: UIStackView = {
        let view = UIStackView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.spacing = 16
        return view
    }()
    
    private lazy var inboxButton: UIButton = {
        let view = UIButton()
        view.translatesAutoresizingMaskIntoConstraints = false
        
        let configuration = UIImage.SymbolConfiguration(scale: .large)
        let image = UIImage(systemName: "envelope", withConfiguration: configuration)
        
        view.setImage(image, for: .normal)
        view.imageView?.tintColor = .secondaryLabel
        view.imageView?.contentMode = .scaleAspectFit
        
        view.setTitleColor(.label, for: .normal)
        view.setTitle("Inbox", for: .normal)
        
        view.imageEdgeInsets = UIEdgeInsets(top: 0, left: 0, bottom: 0, right: 16)
        view.contentEdgeInsets = UIEdgeInsets(top: 0, left: 0, bottom: 0, right: 0)
        
        view.setContentHuggingPriority(.defaultHigh, for: .horizontal)
        
        return view
    }()
    
    private lazy var historyButton: UIButton = {
        let view = UIButton()
        view.translatesAutoresizingMaskIntoConstraints = false
        
        let configuration = UIImage.SymbolConfiguration(scale: .large)
        let image = UIImage(systemName: "calendar", withConfiguration: configuration)
        
        view.setImage(image, for: .normal)
        view.imageView?.tintColor = .secondaryLabel
        view.imageView?.contentMode = .scaleAspectFit
        
        view.setTitleColor(.label, for: .normal)
        view.setTitle("History", for: .normal)
        
        view.imageEdgeInsets = UIEdgeInsets(top: 0, left: 0, bottom: 0, right: 16)
        view.contentEdgeInsets = UIEdgeInsets(top: 0, left: 0, bottom: 0, right: 0)
        
        view.setContentHuggingPriority(.defaultHigh, for: .horizontal)
        
        return view
    }()
    
    private lazy var blankSpace: UIView = {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    override init(frame: CGRect) {
        super.init(frame: .zero)
        buildHierarchy()
        setupConstrains()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func buildHierarchy(){
        addSubview(grettingLabel)
        addSubview(stackView)
        
        stackView.addArrangedSubview(inboxButton)
        stackView.addArrangedSubview(historyButton)
        stackView.addArrangedSubview(blankSpace)
    }
    
    func setupConstrains(){
        NSLayoutConstraint.activate([
            grettingLabel.topAnchor.constraint(equalToSystemSpacingBelow: topAnchor, multiplier: 1),
            grettingLabel.leadingAnchor.constraint(equalToSystemSpacingAfter: leadingAnchor, multiplier: 2),
            trailingAnchor.constraint(equalToSystemSpacingAfter: grettingLabel.trailingAnchor, multiplier: 2),
            
            stackView.topAnchor.constraint(equalToSystemSpacingBelow: grettingLabel.bottomAnchor, multiplier: 2),
            stackView.leadingAnchor.constraint(equalToSystemSpacingAfter: leadingAnchor, multiplier: 2),
            stackView.trailingAnchor.constraint(equalToSystemSpacingAfter: trailingAnchor, multiplier: -2),
            stackView.bottomAnchor.constraint(equalToSystemSpacingBelow: bottomAnchor, multiplier: -2)
        ])
    }
    
}
