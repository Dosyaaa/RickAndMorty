//
//  SeriesViewController.swift
//  RickAndMorty
//
//  Created by Islam on 16/4/23.
//

import UIKit

class SeriesViewController: UIViewController {
    
    let seriesCollectionVC: UICollectionView = {
        let layout = UICollectionViewFlowLayout()
        let seriesCollection = UICollectionView(frame: .zero, collectionViewLayout: layout)
        return seriesCollection
    }()
    
    private func seriesConfigureCV() {
        seriesCollectionVC.dataSource = self
        seriesCollectionVC.delegate = self
        seriesCollectionVC.register(SeriesCollectionViewCell.self, forCellWithReuseIdentifier: SeriesCollectionViewCell.reuseID)
    }
    
    private func configureCVConstraint() {
        view.addSubview(seriesCollectionVC)
        seriesCollectionVC.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            seriesCollectionVC.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 0),
            seriesCollectionVC.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: 20),
            seriesCollectionVC.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 0),
            seriesCollectionVC.rightAnchor.constraint(equalTo: view.rightAnchor, constant: 0)
        ])

    }

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        seriesConfigureCV()
        configureCVConstraint()
    }
}

extension SeriesViewController: UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView,
                        numberOfItemsInSection section: Int
    ) -> Int {
        20
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        guard let cell = collectionView.dequeueReusableCell(
            withReuseIdentifier: SeriesCollectionViewCell.reuseID,
            for: indexPath
        ) as? SeriesCollectionViewCell else {fatalError()}
        return cell
    }
}

extension SeriesViewController: UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView,
                        layout collectionViewLayout: UICollectionViewLayout,
                        sizeForItemAt indexPath: IndexPath
    ) -> CGSize {
        .init(width: collectionView.frame.width, height: 80)
    }
}
