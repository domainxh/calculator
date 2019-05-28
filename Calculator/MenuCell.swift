//
//  sliderCell.swift
//  CustomizableCalculator
//
//  Created by Xiaoheng Pan on 2/17/17.
//  Copyright © 2017 Xiaoheng Pan. All rights reserved.
//

import UIKit

class MenuCell: UITableViewCell {
    
    func configCell(_ menuItems: MediaType) {
        menuLabel.text = menuItems.rawValue
        menuImage.image = UIImage(named: menuItems.rawValue)
        setupView()
    }
    
    private var menuLabel: UILabel = {
        let label = UILabel()
        label.font = UIFont(name: "AvenirNext-Regular", size: 25)
        label.textAlignment = .center
        return label
    }()
    
    private let menuImage: UIImageView = {
        let iv = UIImageView()
        iv.image = UIImage(named: "Settings")
        iv.contentMode = .scaleAspectFit
        return iv
    }()
    
    private func setupView() {
        addSubviews(menuLabel, menuImage)
        addConstraintsWithFormat("H:|[v0]-[v1]|", views: menuImage, menuLabel)
        addConstraintsWithFormat("V:|[v0]|", views: menuImage)
        addConstraintsWithFormat("V:|[v0]|", views: menuLabel)
    }

}

extension MenuCell {
    static var reuseIdentifier: String {
        return String(describing: MenuCell.self)
    }
}
