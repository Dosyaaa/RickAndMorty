//
//  SeriesCollectionViewCell.swift
//  RickAndMorty
//
//  Created by Islam on 16/4/23.
//

import UIKit

class SeriesCollectionViewCell: UICollectionViewCell {
    
    static let reuseID = String(describing: SeriesCollectionViewCell.self)
    
    let seriesImage: UIImageView = {
       let image = UIImageView()
        return image
    }()
    
    let seriesLable: UILabel = {
        let label = UILabel()
        label.font = UIFont(name: "Hoefler Text", size: 20.0)
        return label
    }()
    
    let nameSeriesLable: UILabel = {
        let label = UILabel()
        label.font = UIFont(name: "Hoefler Text", size: 20.0)
        return label
    }()
    
    private func configureCVConstraint() {
        addSubview(seriesImage)
        seriesImage.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            seriesImage.topAnchor.constraint(equalTo: topAnchor, constant: 10),
            seriesImage.bottomAnchor.constraint(equalTo: bottomAnchor, constant: 10),
            seriesImage.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 10),
            seriesImage.heightAnchor.constraint(equalTo: heightAnchor, constant: -20),
            seriesImage.widthAnchor.constraint(equalTo: widthAnchor, constant: -260)
        ])
        
        addSubview(seriesLable)
        seriesLable.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            seriesLable.topAnchor.constraint(equalTo: topAnchor, constant: 15),
            seriesLable.leftAnchor.constraint(equalTo: seriesImage.rightAnchor, constant: 15),
            seriesLable.heightAnchor.constraint(equalTo: heightAnchor, constant: -60),
            seriesLable.widthAnchor.constraint(equalTo: widthAnchor, constant: 160)
        ])
        
        addSubview(nameSeriesLable)
        nameSeriesLable.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            nameSeriesLable.topAnchor.constraint(equalTo: seriesLable.bottomAnchor, constant: 5),
            nameSeriesLable.bottomAnchor.constraint(equalTo: bottomAnchor, constant: 10),
            nameSeriesLable.leftAnchor.constraint(equalTo: seriesImage.rightAnchor, constant: 15),
            nameSeriesLable.heightAnchor.constraint(equalTo: heightAnchor, constant: -10),
            nameSeriesLable.widthAnchor.constraint(equalTo: widthAnchor, constant: 180)
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
