//
//  SeriesViewController.swift
//  RickAndMorty
//
//  Created by Islam on 15/4/23.
//

import UIKit

class SeriesViewController: UIViewController {
    
    let collectionVC: UICollectionView = {
        let layout = UICollectionViewFlowLayout()
        let collection = UICollectionView(frame: .zero, collectionViewLayout: layout)
        return collection
    }()
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .systemOrange
        
        view.addSubview(collectionVC)

    }
}
