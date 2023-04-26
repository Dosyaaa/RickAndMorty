//
//  CollectionViewCell.swift
//  RickAndMorty
//
//  Created by User on 26/4/23.
//

import UIKit

class CollectionViewCell: UICollectionViewCell {
    
    static let id = String(describing: CollectionViewCell.self)
    
    lazy var label = UILabel(frame: CGRect(x: 35, y: 125, width: 120, height: 25))
    lazy var image = UIImageView(frame: CGRect(x: 25, y: 5, width: 120, height: 120))
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        self.addSubview(label)
        self.addSubview(image)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func display(item: Characters) {
        label.text = item.name
        label.textColor = .green
        image.backgroundColor = .white
        image.layer.cornerRadius = 60
        image.image = UIImage(named: "person.fill")
    }
}
