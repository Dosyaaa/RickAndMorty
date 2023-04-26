//
//  CharactersViewController.swift
//  RickAndMorty
//
//  Created by User on 26/4/23.
//

import UIKit

class ViewController: UIViewController {
    lazy var collectionView: UICollectionView = {
        let layout = UICollectionViewFlowLayout()
        let view = UICollectionView(frame: CGRect(x: 0, y: 90, width: self.view.frame.width, height:self.view.frame.height), collectionViewLayout: layout)
        layout.sectionInset = UIEdgeInsets(top: 10, left: 10, bottom: 10, right: 10)
        layout.itemSize = CGSize(width: 100, height: 100)
        layout.scrollDirection = .vertical
        view.dataSource = self
        view.delegate = self
        view.backgroundColor = .black
        view.register(CollectionViewCell.self, forCellWithReuseIdentifier: CollectionViewCell.id)
        return view
    }()
    let searchBar = UISearchBar(frame: CGRectZero)
    
    var array: [Characters] = [Characters(name: "Rick Sanchez"),Characters(name: "Rick Sanchez"),Characters(name: "Rick Sanchez"),Characters(name: "Rick Sanchez"),Characters(name: "Rick Sanchez"),Characters(name: "Rick Sanchez"),Characters(name: "Rick Sanchez"),Characters(name: "Rick Sanchez"),Characters(name: "Rick Sanchez"),Characters(name: "Rick Sanchez"),Characters(name: "Rick Sanchez"),Characters(name: "Rick Sanchez"),Characters(name: "Rick Sanchez"),Characters(name: "Rick Sanchez"),Characters(name: "Rick Sanchez"),Characters(name: "Rick Sanchez"),Characters(name: "Rick Sanchez"),Characters(name: "Rick Sanchez")]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.addSubview(collectionView)
        view.addSubview(searchBar)
        configureUI()
    }
    
    @objc func handleShowSearchBar() {
        searchBar.becomeFirstResponder()
        search(shouldShow: true)
    }
    
    func configureUI() {
        view.backgroundColor = .white
        searchBar.frame.origin.y = 40
        searchBar.placeholder = "Search characters"
        searchBar.sizeToFit()
        searchBar.delegate = self
        
        navigationController?.navigationBar.barTintColor = UIColor(red: 55/255, green: 120/255,
                                                 blue: 250/255, alpha: 1)
        navigationController?.navigationBar.barStyle = .black
        navigationController?.navigationBar.tintColor = .white
        navigationController?.navigationBar.prefersLargeTitles = true
        navigationController?.navigationBar.isTranslucent = false
        showSearchBarButton(shouldShow: true)
    }
    func showSearchBarButton(shouldShow: Bool) {
        if shouldShow {
            navigationItem.rightBarButtonItem = UIBarButtonItem(barButtonSystemItem: .search,
                                                                target: self,
                                                                action: #selector(handleShowSearchBar))
        } else {
            navigationItem.rightBarButtonItem = nil
        }
    }
    
    func search(shouldShow: Bool) {
        showSearchBarButton(shouldShow: !shouldShow)
        searchBar.showsCancelButton = shouldShow
        navigationItem.titleView = shouldShow ? searchBar : nil
    }
}

extension ViewController: UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
         let cell = collectionView.dequeueReusableCell(withReuseIdentifier: CollectionViewCell.id, for: indexPath) as! CollectionViewCell
         let model = array[indexPath.row]
         cell.display(item: model)
         return cell
     }
 }

 extension ViewController: UICollectionViewDelegateFlowLayout {
     func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
         CGSize(width: 170, height: 150)
    }
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return array.count
    }
}

extension ViewController: UISearchBarDelegate {
    func beginSearching(_ searchBar: UISearchBar) {
        print("Beginning searching")
    }
    func endSearching(_ searchBar: UISearchBar) {
        print("End searching")
    }
    func cancelButtonClicked(_ searchBar: UISearchBar) {
        search(shouldShow: false)
    }
    func searchBar(_ searchBar: UISearchBar, textDidChange searchText: String) {
        print("Search text is \(searchText)")
    }
}
