//
//  InformationCollectionViewCell.swift
//  RickAndMorty
//
//  Created by Islam on 16/4/23.
//

import UIKit

class InformationCollectionViewCell: UICollectionViewCell {
    
    static let reuseID = String(describing: InformationCollectionViewCell.self)
    
    let seriesImage: UIImageView = {
       let image = UIImageView()
        return image
    }()
    
    let nameSeriesLable: UILabel = {
        let label = UILabel()
        label.font = UIFont(name: "Hoefler Text", size: 22.0)
        return label
    }()
    
    let yearOfIssueLable: UILabel = {
       let label = UILabel()
        label.font = UIFont(name: "Hoefler Text", size: 17.0)
        return label
    }()
    
    let ageLimitLable: UILabel = {
        let label = UILabel()
        label.font = UIFont(name: "Hoefler Text", size: 17.0)
        return label
    }()
    
    let seasonsLabel: UILabel = {
       let label = UILabel()
        label.font = UIFont(name: "Hoefler Text", size: 17.0)
        return label 
    }()
    
    let seriesLable: UILabel = {
        let label = UILabel()
        label.font = UIFont(name: "Hoefler Text", size: 17.0)
        return label
    }()
    
    let seriesDiscriptionLable: UILabel = {
        let label = UILabel()
        label.font = UIFont(name: "Hoefler Text", size: 17.0)
        label.numberOfLines = 8
        return label
    }()
    
    let charactersLable: UILabel = {
        let label = UILabel()
        label.font = UIFont(name: "Hoefler Text", size: 17.0)
        label.numberOfLines = 2
        return label
    }()
    
    let storyLable: UILabel = {
        let label = UILabel()
        label.font = UIFont(name: "Hoefler Text", size: 17.0)
        return label
    }()
    
    let authorLable: UILabel = {
       let label = UILabel()
        label.font = UIFont(name: "Hoefler Text", size: 17.0)
        return label
    }()
    
    private func configureCVConstraint() {
        addSubview(seriesImage)
        seriesImage.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            seriesImage.topAnchor.constraint(equalTo: topAnchor, constant: 0),
            seriesImage.leftAnchor.constraint(equalTo: leftAnchor, constant: 0),
            seriesImage.rightAnchor.constraint(equalTo: rightAnchor, constant: 20),
            seriesImage.heightAnchor.constraint(equalTo: heightAnchor, constant: -480),
            seriesImage.widthAnchor.constraint(equalTo: widthAnchor, constant: 0)
        ])
        
        addSubview(nameSeriesLable)
        nameSeriesLable.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            nameSeriesLable.topAnchor.constraint(equalTo: seriesImage.bottomAnchor, constant: -100),
            nameSeriesLable.leftAnchor.constraint(equalTo: leftAnchor, constant: 20),
            nameSeriesLable.heightAnchor.constraint(equalTo: heightAnchor, constant: -500),
            nameSeriesLable.widthAnchor.constraint(equalTo: widthAnchor, constant: 200)
        ])
        
        addSubview(yearOfIssueLable)
        yearOfIssueLable.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            yearOfIssueLable.topAnchor.constraint(equalTo: nameSeriesLable.bottomAnchor, constant: -170),
            yearOfIssueLable.leftAnchor.constraint(equalTo: leftAnchor, constant: 20),
            yearOfIssueLable.heightAnchor.constraint(equalTo: heightAnchor, constant: -640),
            yearOfIssueLable.widthAnchor.constraint(equalTo: widthAnchor, constant: 200)
        ])
        
        addSubview(ageLimitLable)
        ageLimitLable.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            ageLimitLable.topAnchor.constraint(equalTo: nameSeriesLable.bottomAnchor, constant: -170),
            ageLimitLable.leftAnchor.constraint(equalTo: leftAnchor, constant: 80),
            ageLimitLable.heightAnchor.constraint(equalTo: heightAnchor, constant: -640),
            ageLimitLable.widthAnchor.constraint(equalTo: widthAnchor, constant: 200)
        ])
        
        addSubview(seasonsLabel)
        seasonsLabel.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            seasonsLabel.topAnchor.constraint(equalTo: nameSeriesLable.bottomAnchor, constant: -170),
            seasonsLabel.leftAnchor.constraint(equalTo: leftAnchor, constant: 130),
            seasonsLabel.heightAnchor.constraint(equalTo: heightAnchor, constant: -640),
            seasonsLabel.widthAnchor.constraint(equalTo: widthAnchor, constant: 200)
        ])
        
        addSubview(seriesLable)
        seriesLable.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            seriesLable.topAnchor.constraint(equalTo: nameSeriesLable.bottomAnchor, constant: -170),
            seriesLable.leftAnchor.constraint(equalTo: leftAnchor, constant: 215),
            seriesLable.heightAnchor.constraint(equalTo: heightAnchor, constant: -640),
            seriesLable.widthAnchor.constraint(equalTo: widthAnchor, constant: 200)
        ])
        
        addSubview(seriesDiscriptionLable)
        seriesDiscriptionLable.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            seriesDiscriptionLable.topAnchor.constraint(equalTo: yearOfIssueLable.bottomAnchor, constant: -160),
            seriesDiscriptionLable.leftAnchor.constraint(equalTo: leftAnchor, constant: 20),
            seriesDiscriptionLable.heightAnchor.constraint(equalTo: heightAnchor, constant: -400),
            seriesDiscriptionLable.widthAnchor.constraint(equalTo: widthAnchor, constant: -40)
        ])
        
        addSubview(charactersLable)
        charactersLable.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            charactersLable.topAnchor.constraint(equalTo: yearOfIssueLable.bottomAnchor, constant: -50),
            charactersLable.leftAnchor.constraint(equalTo: leftAnchor, constant: 20),
            charactersLable.heightAnchor.constraint(equalTo: heightAnchor, constant: -400),
            charactersLable.widthAnchor.constraint(equalTo: widthAnchor, constant: -40)
        ])
        
        addSubview(storyLable)
        storyLable.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            storyLable.topAnchor.constraint(equalTo: charactersLable.bottomAnchor, constant: -280),
            storyLable.leftAnchor.constraint(equalTo: leftAnchor, constant: 20),
            storyLable.heightAnchor.constraint(equalTo: heightAnchor, constant: -500),
            storyLable.widthAnchor.constraint(equalTo: widthAnchor, constant: -40)
        ])
        
        addSubview(authorLable)
        authorLable.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            authorLable.topAnchor.constraint(equalTo: storyLable.bottomAnchor, constant: -240),
            authorLable.leftAnchor.constraint(equalTo: leftAnchor, constant: 20),
            authorLable.heightAnchor.constraint(equalTo: heightAnchor, constant: -500),
            authorLable.widthAnchor.constraint(equalTo: widthAnchor, constant: -40)
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
