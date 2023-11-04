//
//  ViewController.swift
//  Homework15 - Collection View
//
//  Created by salome on 04.11.23.
//

import UIKit

final class ItemDetailsTableViewCell: UITableViewCell {
    
    // MARK: - Properties
    private let mainStackView: UIStackView = {
        let stackView = UIStackView()
        stackView.spacing = 8
        stackView.isLayoutMarginsRelativeArrangement = true
        stackView.layoutMargins = .init(top: 8, left: 16, bottom: 8, right: 16)
        stackView.translatesAutoresizingMaskIntoConstraints = false
        return stackView
    }()
    
    private let titleLabel: UILabel = {
        let label = UILabel()
        label.font = UIFont(name: "Helvetica-Bold", size: 18)
        label.textColor = .purple
        return label
    }()
    
    private let itemImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.contentMode = .scaleAspectFit
        return imageView
    }()
    
    private let itemRating: UILabel = {
        let ratingLabel = UILabel()
        ratingLabel.font = UIFont(name: "Helvetica-Bold", size: 18)
        ratingLabel.textColor = .white
        return ratingLabel
    }()
    
    private let itemDescription: UILabel = {
        let descriptionLabel = UILabel()
        descriptionLabel.font = UIFont(name: "Helvetica-Bold", size: 18)
        descriptionLabel.textColor = .white
        return descriptionLabel
    }()
    
    private let selectButton: UIButton = {
        let forSelectButton = UIButton()
        return forSelectButton
    }()
    

// MARK: - Configure
func configure(with model: ItemDetails) {
    itemImageView.image = model.image
    titleLabel.text = model.title
    itemDescription.text = model.description
}

// MARK: - Private Methods

private func addSubviews() {
    addSubview(mainStackView)
    mainStackView.addArrangedSubview(titleLabel)
    mainStackView.addArrangedSubview(itemImageView)
    mainStackView.addArrangedSubview(itemRating)
    mainStackView.addArrangedSubview(itemDescription)
    addSubview(selectButton)
}

private func setupConstraints() {
    NSLayoutConstraint.activate([
        mainStackView.topAnchor.constraint(equalTo: self.topAnchor),
        mainStackView.leftAnchor.constraint(equalTo: self.leftAnchor),
        mainStackView.rightAnchor.constraint(equalTo: self.rightAnchor),
        mainStackView.bottomAnchor.constraint(equalTo: self.bottomAnchor),
        
        itemImageView.widthAnchor.constraint(equalToConstant: 375),
        itemImageView.heightAnchor.constraint(equalToConstant: 210),
        
        
       
    ])
}
}
