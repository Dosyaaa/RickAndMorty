//
//  SeasonsCollectionViewCell.swift
//  RickAndMorty
//
//  Created by Islam on 26/4/23.
//

import UIKit

class SeasonsCollectionViewCell: UICollectionViewCell {
    
    static let reuseId = String(describing: SeasonsCollectionViewCell.self)
    
    let seasonsLabel: UILabel = {
        let label = UILabel()
        label.font = UIFont(name: "Hoefler Text", size: 20.0)
        return label
    }()
    
    private func configureCVConstraint() {
        addSubview(seasonsLabel)
        seasonsLabel.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            seasonsLabel.topAnchor.constraint(equalTo: topAnchor, constant: -15),
            seasonsLabel.leftAnchor.constraint(equalTo: leftAnchor, constant: 20),
            seasonsLabel.heightAnchor.constraint(equalTo: heightAnchor, constant: 30),
            seasonsLabel.widthAnchor.constraint(equalTo: widthAnchor, constant: 200)
        ])
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        configureCVConstraint()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}


