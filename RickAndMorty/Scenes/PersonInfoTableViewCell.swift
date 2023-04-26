//
//  PersonInfoTableViewCell.swift
//  RickAndMorty
//
//  Created by Kamila on 14/4/23.
//

import UIKit

class PersonInfoTableViewCell: UITableViewCell {
    
    static let reuseId = String(describing: PersonInfoTableViewCell.self)
    
//MARK: - Init
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        initialize()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
//MARK: - Properties
    var nameTextField = DefaultTextField(placeholder: "Name", text: "")
    var surnameTextField = DefaultTextField(placeholder: "Surname", text: "")
    var dateOfBirthTextField = DefaultTextField(placeholder: "Date Of Birth", text: "")
    
    private lazy var stack: UIStackView = {
        let stack = UIStackView(arrangedSubviews: [nameTextField, surnameTextField, dateOfBirthTextField])
        stack.axis = .vertical
        stack.distribution = .fillEqually
        stack.spacing = 20

        return stack
    }()
//MARK: - Public methods
    func display(item: Any) {

    }
}

//MARK: - Private methods
private extension PersonInfoTableViewCell {
    func initialize() {
        contentView.addSubview(stack)
        stack.translatesAutoresizingMaskIntoConstraints = false
        stack.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 15).isActive = true
        stack.bottomAnchor.constraint(equalTo: contentView.bottomAnchor, constant: -15).isActive = true
        stack.leftAnchor.constraint(equalTo: contentView.leftAnchor, constant: 20).isActive = true
        stack.heightAnchor.constraint(equalToConstant: 200).isActive = true
        stack.widthAnchor.constraint(equalToConstant: 390).isActive = true
    }
}
