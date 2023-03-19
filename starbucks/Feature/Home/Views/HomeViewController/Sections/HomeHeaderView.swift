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
    
    private lazy var horizontalStackView: UIStackView = {
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
        view.setContentHuggingPriority(.defaultHigh, for: .horizontal)
        return view
    }()
    
    private lazy var receiptButton: UIButton = {
        let view = UIButton()
        view.translatesAutoresizingMaskIntoConstraints = false
        
        let image = UIImage(
            systemName: "doc.text",
            withConfiguration: UIImage.SymbolConfiguration(scale: .large)
        )
        
        view.setImage(image, for: .normal)
        view.imageView?.tintColor = .secondaryLabel
        view.imageView?.contentMode = .scaleAspectFit
        
        return view
    }()
    
    private lazy var profileButton: UIButton = {
        let view = UIButton()
        view.translatesAutoresizingMaskIntoConstraints = false
        
        let image = UIImage(
            systemName: "person.circle",
            withConfiguration: UIImage.SymbolConfiguration(scale: .large)
        )
        
        view.setImage(image, for: .normal)
        view.imageView?.tintColor = .secondaryLabel
        view.imageView?.contentMode = .scaleAspectFit
        
//        view.set
        
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
        addSubview(horizontalStackView)
        
        horizontalStackView.addArrangedSubview(inboxButton)
        horizontalStackView.addArrangedSubview(historyButton)
        horizontalStackView.addArrangedSubview(blankSpace)
        horizontalStackView.addArrangedSubview(receiptButton)
        horizontalStackView.addArrangedSubview(profileButton)
    }
    
    func setupConstrains(){
        NSLayoutConstraint.activate([
            grettingLabel.topAnchor.constraint(equalToSystemSpacingBelow: topAnchor, multiplier: 1),
            grettingLabel.leadingAnchor.constraint(equalTo: leadingAnchor),
            //            grettingLabel.leadingAnchor.constraint(equalToSystemSpacingAfter: leadingAnchor, multiplier: 2),
//            trailingAnchor.constraint(equalToSystemSpacingAfter: grettingLabel.trailingAnchor, multiplier: -2),
//            grettingLabel.trailingAnchor.constraint(equalToSystemSpacingAfter: trailingAnchor, multiplier: -1),
//            grettingLabel.trailingAnchor.constraint(lessThanOrEqualTo: trailingAnchor),
            grettingLabel.trailingAnchor.constraint(equalTo: trailingAnchor),
            
            horizontalStackView.topAnchor.constraint(equalToSystemSpacingBelow: grettingLabel.bottomAnchor, multiplier: 2),
            horizontalStackView.leadingAnchor.constraint(equalTo: leadingAnchor),
            horizontalStackView.trailingAnchor.constraint(equalTo: trailingAnchor),
            horizontalStackView.bottomAnchor.constraint(equalTo: bottomAnchor, constant: -16),

        ])
    }
    
}
