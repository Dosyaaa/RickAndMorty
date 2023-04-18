//
//  SeriesViewController.swift
//  RickAndMorty
//
//  Created by Islam on 15/4/23.
//

import UIKit

class SeasonsViewController: UIViewController {
    
    let seasonsCollectionVC: UICollectionView = {
        let layout = UICollectionViewFlowLayout()
        let seasonsCollection = UICollectionView(frame: .zero, collectionViewLayout: layout)
        return seasonsCollection
    }()
    
    private func seasonsConfigureCV() {
        seasonsCollectionVC.dataSource = self
        seasonsCollectionVC.delegate = self
        seasonsCollectionVC.register(SeasonsCollectionViewCell.self, forCellWithReuseIdentifier: SeasonsCollectionViewCell.reuseId)
    }

    private func configureCVConstraint() {
        view.addSubview(seasonsCollectionVC)
        seasonsCollectionVC.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            seasonsCollectionVC.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 0),
            seasonsCollectionVC.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: 20),
            seasonsCollectionVC.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 0),
            seasonsCollectionVC.rightAnchor.constraint(equalTo: view.rightAnchor, constant: 0)
        ])
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        seasonsConfigureCV()
        view.backgroundColor = .white
        configureCVConstraint()
    }
}

extension SeasonsViewController: UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView,
                        numberOfItemsInSection section: Int
    ) -> Int {
        50
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        guard let cell = collectionView.dequeueReusableCell(
            withReuseIdentifier: SeasonsCollectionViewCell.reuseId,
            for: indexPath
        ) as? SeasonsCollectionViewCell else {fatalError()}
        return cell
    }
}

extension SeasonsViewController: UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView,
                        layout collectionViewLayout: UICollectionViewLayout,
                        sizeForItemAt indexPath: IndexPath
    ) -> CGSize {
        .init(width: collectionView.frame.width, height: 50)
    }
}
