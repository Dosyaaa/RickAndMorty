//
//  Extentions + ViewsForForgotPasswordViewController.swift
//  RickAndMorty
//
//  Created by Mac on 15/4/2023.
//

import UIKit

private let confirmPassword = UITextField()
private let labelWarning = UILabel()
private let labelDescription = UILabel()
private let buttonCheck = UIButton()

extension ForgotPasswordViewController {
    
    func attention() {
        view.addSubview(confirmPassword)
        view.addSubview(labelWarning)
        view.addSubview(labelDescription)
        view.addSubview(buttonCheck)
        
        confirmPassword.placeholder = "X X X X "
        confirmPassword.borderStyle = .roundedRect
        confirmPassword.translatesAutoresizingMaskIntoConstraints = false
        confirmPassword.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -20).isActive = true
        confirmPassword.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 20).isActive = true
        confirmPassword.topAnchor.constraint(equalTo: view.topAnchor, constant: 250).isActive = true
        confirmPassword.heightAnchor.constraint(equalToConstant: 40).isActive = true
        confirmPassword.widthAnchor.constraint(equalToConstant: 400).isActive = true
        
        labelWarning.text = "Warning!"
        labelWarning.textColor = .red
        labelWarning.font = UIFont.systemFont(ofSize: 30)
        labelWarning.translatesAutoresizingMaskIntoConstraints = false
        labelWarning.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -25).isActive = true
        labelWarning.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 25).isActive = true
        labelWarning.topAnchor.constraint(equalTo: view.topAnchor, constant: 100).isActive = true
        labelWarning.heightAnchor.constraint(equalToConstant: 40).isActive = true
        labelWarning.widthAnchor.constraint(equalToConstant: 200).isActive = true
        labelWarning.textAlignment = .center
        
        labelDescription.text = "if you forget account password\n you can resume with Phone Number"
        labelDescription.textColor = .lightGray
        labelDescription.numberOfLines = 2
        labelDescription.lineBreakMode = .byWordWrapping
        labelDescription.tintColor = .lightGray
        labelDescription.translatesAutoresizingMaskIntoConstraints = false
        labelDescription.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -20).isActive = true
        labelDescription.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 20).isActive = true
        labelDescription.topAnchor.constraint(equalTo: view.topAnchor, constant: 140).isActive = true
        labelDescription.heightAnchor.constraint(equalToConstant: 100).isActive = true
        labelDescription.widthAnchor.constraint(equalToConstant: 400).isActive = true
        labelDescription.textAlignment = .center
        
        buttonCheck.layer.cornerRadius = 10
        buttonCheck.setTitle("Confirm", for: .normal)
        buttonCheck.backgroundColor = .blue
        buttonCheck.addTarget(self, action: #selector(check), for: .touchUpInside)
        buttonCheck.translatesAutoresizingMaskIntoConstraints = false
        buttonCheck.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -95).isActive = true
        buttonCheck.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 100).isActive = true
        buttonCheck.topAnchor.constraint(equalTo: view.topAnchor, constant: 570).isActive = true
        buttonCheck.heightAnchor.constraint(equalToConstant: 40).isActive = true
        buttonCheck.widthAnchor.constraint(equalToConstant: 400).isActive = true
        
    }
    @objc
    func check() {
        let alert = UIAlertController(title: "Hi", message: "Remember what password you had before, please write", preferredStyle: .alert)
        var alertTextField = UITextField()
        alert.addTextField() { textField in
            alertTextField = textField
        }
        
        let acceptAction = UIAlertAction(title: "ok", style: .default) { action in
            print("ok")
        }
        alert.addAction(acceptAction)
        present(alert, animated: true)
        
    }
}

