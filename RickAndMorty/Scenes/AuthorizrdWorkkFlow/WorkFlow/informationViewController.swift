//
//  informationViewController.swift
//  RickAndMorty
//
//  Created by Islam on 26/4/23.
//

import UIKit

class informationViewController: UIViewController {
    
    let informationCollectionCV: UICollectionView = {
       let layout = UICollectionViewFlowLayout()
        let informationCollection = UICollectionView(frame: .zero, collectionViewLayout: layout)
        return informationCollection
    }()

    private func informationConfigureCV() {
        informationCollectionCV.dataSource = self
        informationCollectionCV.delegate = self
        informationCollectionCV.register(InformationCollectionViewCell.self, forCellWithReuseIdentifier: InformationCollectionViewCell.reuseID)
    }

    private func configureCVConstraint() {
        view.addSubview(informationCollectionCV)
        informationCollectionCV.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            informationCollectionCV.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 0),
            informationCollectionCV.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: 20),
            informationCollectionCV.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 0),
            informationCollectionCV.rightAnchor.constraint(equalTo: view.rightAnchor, constant: 0)
        ])
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        informationConfigureCV()
        configureCVConstraint()
    }
}

extension informationViewController: UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView,
                        numberOfItemsInSection section: Int
    ) -> Int {
        1
    }

    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        guard let cell = collectionView.dequeueReusableCell(
            withReuseIdentifier: InformationCollectionViewCell.reuseID,
            for: indexPath
        ) as? InformationCollectionViewCell else {fatalError()}
        return cell
    }
}

extension informationViewController: UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView,
                        layout collectionViewLayout: UICollectionViewLayout,
                        sizeForItemAt indexPath: IndexPath
    ) -> CGSize {
        .init(width: collectionView.frame.width, height: collectionView.frame.height)
    }
}

