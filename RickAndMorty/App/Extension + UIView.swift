//
//  Extension + UIView.swift
//  RickAndMorty
//
//  Created by Islam on 15/4/23.
//

import Foundation
import UIKit

extension UIView {
    
    func fillToSuperView(view: UIView?, up: CGFloat = 0, down: CGFloat = 0, left: CGFloat = 0, right: CGFloat = 0) {
        guard let view = view else {return}
        view.translatesAutoresizingMaskIntoConstraints = false
        view.topAnchor.constraint(equalTo: self.topAnchor, constant: up).isActive = true
        view.bottomAnchor.constraint(equalTo: self.bottomAnchor, constant: down).isActive = true
        view.leftAnchor.constraint(equalTo: self.leftAnchor, constant: left).isActive = true
        view.rightAnchor.constraint(equalTo: self.rightAnchor, constant: right).isActive = true
    }
    
    func volumeToSuperView(view: UIView?, height: CGFloat = 0, widht: CGFloat = 0) {
        guard let view = view else {return}
        view.translatesAutoresizingMaskIntoConstraints = false
        view.heightAnchor.constraint(equalTo: self.heightAnchor, constant: height).isActive = true
        view.widthAnchor.constraint(equalTo: self.widthAnchor, constant: widht).isActive = true
    }
}
