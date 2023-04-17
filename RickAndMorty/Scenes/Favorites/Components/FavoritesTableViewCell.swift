//
//  FavoritesTableViewCell.swift
//  RickAndMorty
//
//  Created by Aziza A on 15/4/23.
//

import UIKit

class FavoritesTableViewCell: UITableViewCell {
    
    static var reuseId = String(describing: FavoritesTableViewCell.self)
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        initialize()
    }

    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func display(item: Any) {
        
    }

    var favoritesImageView: UIImageView = {
        let favoritesImageView = UIImageView()
        favoritesImageView.layer.cornerRadius = 10
        favoritesImageView.clipsToBounds = true
        favoritesImageView.contentMode = .scaleAspectFill
        return favoritesImageView
    }()
    
    var favoritesTitleLabel: UILabel = {
        let favoritesTitleLabel = UILabel()
        favoritesTitleLabel.textColor = .black
        favoritesTitleLabel.font = UIFont.systemFont(ofSize: 16, weight: .bold)
        favoritesTitleLabel.numberOfLines = 2
        return favoritesTitleLabel
    }()
    
    var favoritesDescription: UILabel = {
        let favoritesDescription = UILabel()
        favoritesDescription.textColor = .gray
        favoritesDescription.font = UIFont.systemFont(ofSize: 15, weight: .regular)
        favoritesDescription.numberOfLines = 5
        return favoritesDescription
    }()
    
    var likeButton: UIButton = {
        let likeButton = UIButton()
        let image = UIImage(named: "heart.png")
        likeButton.setImage(image, for: .normal)
        return likeButton
    }()
    
    private func initialize() {
        contentView.addSubview(favoritesImageView)
        favoritesImageView.translatesAutoresizingMaskIntoConstraints = false
        favoritesImageView.centerYAnchor.constraint(equalTo: self.contentView.centerYAnchor).isActive = true
        favoritesImageView.heightAnchor.constraint(equalToConstant: 110).isActive = true
        favoritesImageView.widthAnchor.constraint(equalToConstant: 110).isActive = true
        favoritesImageView.leadingAnchor.constraint(equalTo: self.contentView.leadingAnchor, constant: 15).isActive = true
        
        contentView.addSubview(favoritesTitleLabel)
        favoritesTitleLabel.translatesAutoresizingMaskIntoConstraints = false
        favoritesTitleLabel.topAnchor.constraint(equalTo: self.contentView.topAnchor, constant: 22).isActive = true
        favoritesTitleLabel.leadingAnchor.constraint(equalTo: self.favoritesImageView.trailingAnchor, constant: 30).isActive = true
        favoritesTitleLabel.widthAnchor.constraint(equalToConstant: 250).isActive = true
        
        contentView.addSubview(favoritesDescription)
        favoritesDescription.translatesAutoresizingMaskIntoConstraints = false
        favoritesDescription.topAnchor.constraint(equalTo: self.favoritesTitleLabel.bottomAnchor, constant: 3).isActive = true
        favoritesDescription.leadingAnchor.constraint(equalTo: self.favoritesImageView.trailingAnchor, constant: 30).isActive = true
        favoritesDescription.widthAnchor.constraint(equalToConstant: 190).isActive = true
        favoritesDescription.heightAnchor.constraint(equalToConstant: 80).isActive = true
        
        contentView.addSubview(likeButton)
        likeButton.translatesAutoresizingMaskIntoConstraints = false
        likeButton.centerYAnchor.constraint(equalTo: self.contentView.centerYAnchor).isActive = true
        likeButton.leadingAnchor.constraint(equalTo: self.favoritesDescription.trailingAnchor, constant: 5).isActive = true
        likeButton.heightAnchor.constraint(equalToConstant: 20).isActive = true
        likeButton.widthAnchor.constraint(equalToConstant: 20).isActive = true
    }
}
