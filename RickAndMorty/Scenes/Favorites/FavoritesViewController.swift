//
//  FavoritesViewController.swift
//  RickAndMorty
//
//  Created by Aziza A on 15/4/23.
//

import UIKit

class FavoritesViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        initialize()
        view.backgroundColor = .white
    }
    
    private let favoritesLabel: UILabel = {
        let favoritesLabel = UILabel()
        favoritesLabel.text = "Favorites"
        favoritesLabel.textColor = .black
        favoritesLabel.font = UIFont.systemFont(ofSize: 25, weight: .bold)
        favoritesLabel.textAlignment = .center
        return favoritesLabel
    }()
    
    private let segmentedControl: UISegmentedControl = {
        let segmentedControl = UISegmentedControl(items: ["Characters", "Episodes"])
        segmentedControl.selectedSegmentIndex = 0
        segmentedControl.addTarget(self, action: #selector(handleSegmentChange), for: .valueChanged)
        return segmentedControl
    }()
    
    @objc
    func handleSegmentChange() {
        print(segmentedControl.selectedSegmentIndex)
        
        switch segmentedControl.selectedSegmentIndex {
        case 0:
            rowsToDisplay = characters
        case 1:
            rowsToDisplay = episodes
        default:
            rowsToDisplay = []
        }
        
        favoritesTableView.reloadData()
    }
    
    func deleteCellAlert(indexPath: IndexPath) {
        let alert = UIAlertController(
            title: "Delete",
            message: "Do you want to remove it from favorites?",
            preferredStyle: .alert
        )
        let acceptAction = UIAlertAction(
            title: "Yes",
            style: .destructive
        ) { action in
            self.rowsToDisplay.remove(at: indexPath.row)
            self.favoritesTableView.deleteRows(at: [indexPath], with: .fade)
        }
        
        let cancelAction = UIAlertAction(
            title: "No",
            style: .default
        )
        alert.addAction(acceptAction)
        alert.addAction(cancelAction)
        present(alert, animated: true)
    }
    
    var favoritesTableView: UITableView!
    
    private let characters: [Any] = []
    
    private let episodes: [Any] = []
    
    // MASTER ARRAY
    public lazy var rowsToDisplay = characters
    
    private lazy var stackView = {
        let stack = UIStackView(arrangedSubviews: [
            segmentedControl, favoritesTableView
        ])
        stack.axis = .vertical
        return stack
    }()
    
    private func initialize() {
        view.addSubview(favoritesLabel)
        favoritesLabel.translatesAutoresizingMaskIntoConstraints = false
        favoritesLabel.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor).isActive = true
        favoritesLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        favoritesLabel.heightAnchor.constraint(equalToConstant: 50).isActive = true
        favoritesLabel.widthAnchor.constraint(equalToConstant: 200).isActive = true
        
        favoritesTableView = UITableView(frame: .zero, style: .plain)
        favoritesTableView.register(FavoritesTableViewCell.self, forCellReuseIdentifier: FavoritesTableViewCell.reuseId)
        favoritesTableView.dataSource = self
        favoritesTableView.delegate = self
        favoritesTableView.showsVerticalScrollIndicator = false
        favoritesTableView.backgroundColor = .clear
        
        view.addSubview(stackView)
        stackView.translatesAutoresizingMaskIntoConstraints = false
        stackView.topAnchor.constraint(equalTo: favoritesLabel.bottomAnchor, constant: 20).isActive = true
        stackView.leadingAnchor.constraint(equalTo: view.leadingAnchor).isActive = true
        stackView.bottomAnchor.constraint(equalTo: view.bottomAnchor).isActive = true
        stackView.trailingAnchor.constraint(equalTo: view.trailingAnchor).isActive = true
    }
}

extension FavoritesViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return rowsToDisplay.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: FavoritesTableViewCell.reuseId, for: indexPath) as? FavoritesTableViewCell else {
            fatalError()
        }
        let model = rowsToDisplay[indexPath.row]
        cell.display(item: model)
        cell.backgroundColor = .clear
        return cell
    }
    
    func tableView(_ tableView: UITableView, editingStyleForRowAt indexPath: IndexPath) -> UITableViewCell.EditingStyle {
        return .delete
    }
    
    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            deleteCellAlert(indexPath: indexPath)
        }
    }
}

extension FavoritesViewController: UITableViewDelegate {
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 150
    }
}
