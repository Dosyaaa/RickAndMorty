//
//  SettingsViewController.swift
//  RickAndMorty
//
//  Created by Kamila on 14/4/23.
//

import UIKit

class SettingsViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = AppBackgroundColor.backgroundColor
        
        configureTV()
        initialize()
    }
    
//MARK: - Properties
    private var settingsLabel: UILabel = {
       let settingsLabel = UILabel()
        settingsLabel.text = "Settings"
        settingsLabel.textColor = .white
        settingsLabel.font = UIFont.systemFont(ofSize: 30, weight: .bold)
        
        return settingsLabel
    }()
    
    var settingsTableView: UITableView!
    private var personInfoArray: [Any] = []
    
    private var saveButton: UIButton = {
       let saveButton = UIButton()
        saveButton.setTitle("Save", for: .normal)
        saveButton.titleLabel?.font = UIFont.systemFont(ofSize: 20)
        saveButton.setTitleColor(ButtonAppearance.textColor, for: .normal)
        saveButton.backgroundColor = ButtonAppearance.backgroundColor
        saveButton.layer.cornerRadius = 10
        saveButton.addTarget(self, action: #selector(saveButtonTapped), for: .touchUpInside)
        
        return saveButton
    }()
    
    private var logOutButton: UIButton = {
       let logOutButton = UIButton()
        logOutButton.setTitle("Log Out", for: .normal)
        logOutButton.titleLabel?.font = UIFont.systemFont(ofSize: 20)
        logOutButton.setTitleColor(.red, for: .normal)
        logOutButton.backgroundColor = UIColor(cgColor: CGColor(red: 40/255, green: 40/255, blue: 40/255, alpha: 0.3))
        logOutButton.layer.cornerRadius = 10
        logOutButton.addTarget(self, action: #selector(logoutButtonTapped), for: .touchUpInside)
        return logOutButton
    }()
    
    @objc func saveButtonTapped() {
        let alert = UIAlertController(
            title: "",
            message: "Data saved",
            preferredStyle: .alert
        )
        
        let acceptAction = UIAlertAction(
            title: "OK",
            style: .cancel
        )
        
        alert.addAction(acceptAction)
        present(alert, animated: true)
    }
    
    @objc func logoutButtonTapped() {
        let alert = UIAlertController(
            title: "",
            message: "Are you sure you want to log out of your account?",
            preferredStyle: .alert
        )
        
        let acceptAction = UIAlertAction(
            title: "Yes",
            style: .destructive
        )
        
        let cancelAction = UIAlertAction(
            title: "No",
            style: .cancel
        )
        
        alert.addAction(acceptAction)
        alert.addAction(cancelAction)
        present(alert, animated: true)
    }
}

//MARK: - Private methods
private extension SettingsViewController {
    func configureTV() {
        settingsTableView = UITableView(frame: .zero, style: .plain)
        settingsTableView.dataSource = self
        settingsTableView.delegate = self
        settingsTableView.register(PersonInfoTableViewCell.self, forCellReuseIdentifier: PersonInfoTableViewCell.reuseId)
        settingsTableView.register(AppearanceTableViewCell.self, forCellReuseIdentifier: AppearanceTableViewCell.reuseId)
        settingsTableView.backgroundColor = .clear
    }
    
    func initialize() {
        view.addSubview(settingsLabel)
        settingsLabel.translatesAutoresizingMaskIntoConstraints = false
        settingsLabel.topAnchor.constraint(equalTo: view.topAnchor, constant: 70).isActive = true
        settingsLabel.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 20).isActive = true
        
        view.addSubview(settingsTableView)
        settingsTableView.translatesAutoresizingMaskIntoConstraints = false
        settingsTableView.topAnchor.constraint(equalTo: settingsLabel.topAnchor, constant: 50).isActive = true
        settingsTableView.heightAnchor.constraint(equalToConstant: 400).isActive = true
        settingsTableView.widthAnchor.constraint(equalToConstant: 440).isActive = true
        
        view.addSubview(saveButton)
        saveButton.translatesAutoresizingMaskIntoConstraints = false
        saveButton.topAnchor.constraint(equalTo: settingsTableView.bottomAnchor, constant: 30).isActive = true
        saveButton.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 20).isActive = true
        saveButton.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -20).isActive = true
        saveButton.heightAnchor.constraint(equalToConstant: 50).isActive = true
        
        view.addSubview(logOutButton)
        logOutButton.translatesAutoresizingMaskIntoConstraints = false
        logOutButton.topAnchor.constraint(equalTo: saveButton.bottomAnchor, constant: 20).isActive = true
        logOutButton.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 20).isActive = true
        logOutButton.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -20).isActive = true
        logOutButton.heightAnchor.constraint(equalToConstant: 50).isActive = true
    }
}

//MARK: - UITableViewDataSource
extension SettingsViewController: UITableViewDataSource {
    func numberOfSections(in tableView: UITableView) -> Int {
        return SettingsSections.allCases.count
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        guard let section = SettingsSections(rawValue: section) else {return 0}
        
        switch section {
        case .PersonInfo: return personInfoArray.count
        case .Appearance: return Appearance.allCases.count
        }
    }
    
    func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        let view = UIView()
        view.backgroundColor = UIColor(cgColor: CGColor(red: 44/255, green: 44/255, blue: 44/255, alpha: 1))

        let title = UILabel()
        title.text = SettingsSections(rawValue: section)?.description
        title.textColor = .white
        title.font = UIFont.systemFont(ofSize: 15, weight: .bold)
        view.addSubview(title)
        title.translatesAutoresizingMaskIntoConstraints = false
        title.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
        title.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 20).isActive = true

        return view
    }

    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return 40
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let section = SettingsSections(rawValue: indexPath.section) else {
            return UITableViewCell()
        }

        switch section {
        case .PersonInfo:
            guard let cell = tableView.dequeueReusableCell(withIdentifier: PersonInfoTableViewCell.reuseId, for: indexPath) as? PersonInfoTableViewCell else { return UITableViewCell() }
            let personInfo = personInfoArray[indexPath.row]
            cell.display(item: personInfo)

            cell.backgroundColor = UIColor(cgColor: CGColor(red: 40/255, green: 40/255, blue: 40/255, alpha: 0.3))
            return cell
        case .Appearance:
            guard let cell = tableView.dequeueReusableCell(withIdentifier: AppearanceTableViewCell.reuseId, for: indexPath) as? AppearanceTableViewCell else { return UITableViewCell() }
            let editTheme = Appearance(rawValue: indexPath.row)
            cell.settingsInfoLabel.text = editTheme?.description

            cell.backgroundColor = UIColor(cgColor: CGColor(red: 40/255, green: 40/255, blue: 40/255, alpha: 0.3))
            return cell
        }
    }
}

//MARK: - UITableViewDelegate
extension SettingsViewController: UITableViewDelegate {
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
    }
}
