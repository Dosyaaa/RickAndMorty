//
//  Extentions + RegisterViewController.swift
//  RickAndMorty
//
//  Created by Mac on 26/4/2023.
//

import UIKit

private let registerName =  UITextField()
private let labelName = UILabel()
private let registerSurename = UITextField()
private let labelSureName = UILabel ()
private let dateOfBirth = UITextField()
private let labelDateOfBirth = UILabel()
private let email = UITextField()
private let labelEmail = UILabel()
private let password =  UITextField()
private let labelPassword = UILabel()
private let buttonConfirm = UIButton()

extension RegisterViewController {
    func registers() {
        view.addSubview(registerName)
        view.addSubview(registerSurename)
        view.addSubview(dateOfBirth)
        view.addSubview(email)
        view.addSubview(password)
        view.addSubview(buttonConfirm)
        view.addSubview(labelName)
        view.addSubview(labelSureName)
        view.addSubview(labelDateOfBirth)
        view.addSubview(labelEmail)
        view.addSubview(labelPassword)
        
        registerName.placeholder = "Name"
        registerSurename.placeholder = "Surename"
        dateOfBirth.placeholder = "Date Of Birth"
        email.placeholder = "Email"
        password.placeholder = "Password"
        
        labelName.translatesAutoresizingMaskIntoConstraints = false
        labelName.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -25).isActive = true
        labelName.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 25).isActive = true
        labelName.topAnchor.constraint(equalTo: view.topAnchor, constant: 55).isActive = true
        labelName.heightAnchor.constraint(equalToConstant: 40).isActive = true
        labelName.widthAnchor.constraint(equalToConstant: 250).isActive = true
        
        registerName.translatesAutoresizingMaskIntoConstraints = false
        registerName.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -20).isActive = true
        registerName.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 20).isActive = true
        registerName.topAnchor.constraint(equalTo: view.topAnchor, constant: 100).isActive = true
        registerName.heightAnchor.constraint(equalToConstant: 40).isActive = true
        registerName.widthAnchor.constraint(equalToConstant: 250).isActive = true
        
        labelSureName.translatesAutoresizingMaskIntoConstraints = false
        labelSureName.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -25).isActive = true
        labelSureName.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 25).isActive = true
        labelSureName.topAnchor.constraint(equalTo: view.topAnchor, constant: 147).isActive = true
        labelSureName.heightAnchor.constraint(equalToConstant: 40).isActive = true
        labelSureName.widthAnchor.constraint(equalToConstant: 250).isActive = true
        
        registerSurename.translatesAutoresizingMaskIntoConstraints = false
        registerSurename.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -20).isActive = true
        registerSurename.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 20).isActive = true
        registerSurename.topAnchor.constraint(equalTo: view.topAnchor, constant: 190).isActive = true
        registerSurename.heightAnchor.constraint(equalToConstant: 40).isActive = true
        registerSurename.widthAnchor.constraint(equalToConstant: 250).isActive = true
        
        labelDateOfBirth.translatesAutoresizingMaskIntoConstraints = false
        labelDateOfBirth.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -25).isActive = true
        labelDateOfBirth.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 25).isActive = true
        labelDateOfBirth.topAnchor.constraint(equalTo: view.topAnchor, constant: 240).isActive = true
        labelDateOfBirth.heightAnchor.constraint(equalToConstant: 40).isActive = true
        labelDateOfBirth.widthAnchor.constraint(equalToConstant: 250).isActive = true
        
        dateOfBirth.translatesAutoresizingMaskIntoConstraints = false
        dateOfBirth.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -20).isActive = true
        dateOfBirth.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 20).isActive = true
        dateOfBirth.topAnchor.constraint(equalTo: view.topAnchor, constant: 280).isActive = true
        dateOfBirth.heightAnchor.constraint(equalToConstant: 40).isActive = true
        dateOfBirth.widthAnchor.constraint(equalToConstant: 250).isActive = true
        
        labelEmail.translatesAutoresizingMaskIntoConstraints = false
        labelEmail.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -25).isActive = true
        labelEmail.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 25).isActive = true
        labelEmail.topAnchor.constraint(equalTo: view.topAnchor, constant: 330).isActive = true
        labelEmail.heightAnchor.constraint(equalToConstant: 40).isActive = true
        labelEmail.widthAnchor.constraint(equalToConstant: 250).isActive = true
        
       email.translatesAutoresizingMaskIntoConstraints = false
       email.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -20).isActive = true
       email.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 20).isActive = true
       email.topAnchor.constraint(equalTo: view.topAnchor, constant: 370).isActive = true
       email.heightAnchor.constraint(equalToConstant: 40).isActive = true
       email.widthAnchor.constraint(equalToConstant: 250).isActive = true
        
       labelPassword.translatesAutoresizingMaskIntoConstraints = false
       labelPassword.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -25).isActive = true
       labelPassword.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 25).isActive = true
       labelPassword.topAnchor.constraint(equalTo: view.topAnchor, constant: 420).isActive = true
       labelPassword.heightAnchor.constraint(equalToConstant: 40).isActive = true
       labelPassword.widthAnchor.constraint(equalToConstant: 250).isActive = true
        
       password.translatesAutoresizingMaskIntoConstraints = false
       password.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -20).isActive = true
       password.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 20).isActive = true
       password.topAnchor.constraint(equalTo: view.topAnchor, constant: 460).isActive = true
       password.heightAnchor.constraint(equalToConstant: 40).isActive = true
       password.widthAnchor.constraint(equalToConstant: 250).isActive = true
        
        registerName.borderStyle = .roundedRect
        registerSurename.borderStyle = .roundedRect
        dateOfBirth.borderStyle = .roundedRect
        email.borderStyle = .roundedRect
        password.borderStyle = .roundedRect
        
        buttonConfirm.layer.cornerRadius = 10
        buttonConfirm.setTitle("Confirm", for: .normal)
        buttonConfirm.addTarget(self,
                               action: #selector(confirm),
                               for: .touchUpInside)
        buttonConfirm.backgroundColor = .blue
        buttonConfirm.translatesAutoresizingMaskIntoConstraints = false
        buttonConfirm.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -95).isActive = true
        buttonConfirm.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 100).isActive = true
        buttonConfirm.topAnchor.constraint(equalTo: view.topAnchor, constant: 590).isActive = true
        buttonConfirm.heightAnchor.constraint(equalToConstant: 40).isActive = true
        buttonConfirm.widthAnchor.constraint(equalToConstant: 250).isActive = true
        
        labelName.tintColor = .black
        labelName.text = "Name"
        labelName.font = UIFont.systemFont(ofSize: 23)
        
        labelSureName.tintColor = .black
        labelSureName.text = "Sure Name"
        labelSureName.font = UIFont.systemFont(ofSize: 23)
        
        labelDateOfBirth.tintColor = .black
        labelDateOfBirth.text = "Date of Birth"
        labelDateOfBirth.font = UIFont.systemFont(ofSize: 23)
        
        labelEmail.tintColor = .black
        labelEmail.text = "Email"
        labelEmail.font = UIFont.systemFont(ofSize: 23)
        
        
        labelPassword.tintColor = .black
        labelPassword.text = "Password"
        labelPassword.font = UIFont.systemFont(ofSize: 23)
        
    }
    @objc
    func confirm() {
        
    }
}



