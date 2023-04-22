//
//  AppearanceTableViewCell.swift
//  RickAndMorty
//
//  Created by Kamila on 16/4/23.
//

import UIKit

class AppearanceTableViewCell: UITableViewCell {

    static let reuseId = String(describing: AppearanceTableViewCell.self)
    
//MARK: - Init
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        initialize()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
//MARK: - Properties
    var settingsInfoLabel: UILabel = {
       let settingsInfoLabel = UILabel()
        settingsInfoLabel.textColor = .white
        settingsInfoLabel.font = UIFont.systemFont(ofSize: 20, weight: .regular)

        return settingsInfoLabel
    }()
    
    lazy var switchControl: UISwitch = {
       let switchControl = UISwitch()
        switchControl.isOn = true
        switchControl.onTintColor = ButtonAppearance.backgroundColor
        switchControl.translatesAutoresizingMaskIntoConstraints = false
        switchControl.addTarget(self, action: #selector(handleSwitchAction), for: .valueChanged)
        
        return switchControl
    }()
    
//MARK: - Selectors
    @objc func handleSwitchAction(sender: UISwitch) {
        if sender.isOn {
            print("Turned On")
        } else {
            print("Turned Off")
        }
    }

}

//MARK: - Private methods
private extension AppearanceTableViewCell {
    func initialize() {
        addSubview(settingsInfoLabel)
        settingsInfoLabel.translatesAutoresizingMaskIntoConstraints = false
        settingsInfoLabel.centerYAnchor.constraint(equalTo: centerYAnchor).isActive = true
        settingsInfoLabel.leftAnchor.constraint(equalTo: leftAnchor, constant: 20).isActive = true
        settingsInfoLabel.heightAnchor.constraint(equalToConstant: 30).isActive = true
        
        contentView.addSubview(switchControl)
        switchControl.centerYAnchor.constraint(equalTo: contentView.centerYAnchor).isActive = true
        switchControl.rightAnchor.constraint(equalTo: contentView.rightAnchor, constant: -30).isActive = true
    }
}
