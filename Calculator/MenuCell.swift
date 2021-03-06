//
//  sliderCell.swift
//  CustomizableCalculator
//
//  Created by Xiaoheng Pan on 2/17/17.
//  Copyright © 2017 Xiaoheng Pan. All rights reserved.
//

import UIKit

class MenuCell: UITableViewCell {
    
    func configCell(_ menuItems: String) {
        menuLabel.text = menuItems
        menuImage.image = UIImage(named: menuItems)
        setupView()
    }
    
    var menuLabel: UILabel = {
        let label = UILabel()
        label.font = UIFont.menuLabel
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
        addConstraintsWithFormat("H:|-[v0]-[v1]", views: menuImage, menuLabel)
        addConstraintsWithFormat("V:[v0(\(MainMenu.cellHeight * 0.6))]", views: menuImage)
        menuImage.centerYAnchor.constraint(equalTo: centerYAnchor).isActive = true
        addConstraintsWithFormat("V:|[v0]|", views: menuLabel)
    }

}

extension MenuCell {
    static var reuseIdentifierAddMenu: String {
        return "Add" + String(describing: MenuCell.self)
    }

    static var reuseIdentifierMainMenu: String {
        return "Main" + String(describing: MenuCell.self)
    }
}
