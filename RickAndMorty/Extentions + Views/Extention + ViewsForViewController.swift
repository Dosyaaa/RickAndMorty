//
//  Extention + ViewsForViewController.swift
//  RickAndMorty
//
//  Created by Mac on 15/4/2023.
//

import UIKit

let buttonRegister = UIButton()
let forgotPassword = UIButton()
let emailTF = UITextField()
let passwordTF = UITextField()
let buttonSignIn = UIButton()
let labelEntry = UILabel()
let nameLabel = UILabel()
let labelPasswordd = UILabel()

let bt = buttonRegister.frame

extension ViewController {
    
    func viewForViewController() {
        view.addSubview(passwordTF)
        view.addSubview(emailTF)
        view.addSubview(labelEntry)
        view.addSubview(labelPasswordd)
        view.addSubview(nameLabel)
        
        emailTF.placeholder = "Email"
        passwordTF.placeholder = "Password"
        
        emailTF.borderStyle = .roundedRect
        passwordTF.borderStyle = .roundedRect
        
        labelEntry.tintColor = .gray
        labelEntry.text = "Employeed / Email"
        labelEntry.font = UIFont.systemFont(ofSize: 20)
        
        labelPasswordd.tintColor = .black
        labelPasswordd.text = "Password"
        labelPasswordd.font = UIFont.systemFont(ofSize: 20)
        
        nameLabel.tintColor = .black
        nameLabel.text = "Rick And Morty"
        nameLabel.font = UIFont.systemFont(ofSize: 30)
        
        emailTF.translatesAutoresizingMaskIntoConstraints = false
        emailTF.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -20).isActive = true
        emailTF.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 20).isActive = true
        emailTF.topAnchor.constraint(equalTo: view.topAnchor, constant: 335).isActive = true
        emailTF.heightAnchor.constraint(equalToConstant: 35).isActive = true
        emailTF.widthAnchor.constraint(equalToConstant: 390).isActive = true
        
        passwordTF.translatesAutoresizingMaskIntoConstraints = false
        passwordTF.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -20).isActive = true
        passwordTF.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 20).isActive = true
        passwordTF.topAnchor.constraint(equalTo: view.topAnchor, constant: 420).isActive = true
        passwordTF.heightAnchor.constraint(equalToConstant: 35).isActive = true
        passwordTF.widthAnchor.constraint(equalToConstant: 390).isActive = true
        
        labelEntry.translatesAutoresizingMaskIntoConstraints = false
        labelEntry.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -25).isActive = true
        labelEntry.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 20).isActive = true
        labelEntry.topAnchor.constraint(equalTo: view.topAnchor, constant: 300).isActive = true
        labelEntry.heightAnchor.constraint(equalToConstant: 35).isActive = true
        labelEntry.widthAnchor.constraint(equalToConstant: 390).isActive = true
        
        labelPasswordd.translatesAutoresizingMaskIntoConstraints = false
        labelPasswordd.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -25).isActive = true
        labelPasswordd.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 20).isActive = true
        labelPasswordd.topAnchor.constraint(equalTo: view.topAnchor, constant: 385).isActive = true
        labelPasswordd.heightAnchor.constraint(equalToConstant: 35).isActive = true
        labelPasswordd.widthAnchor.constraint(equalToConstant: 390).isActive = true
        
        nameLabel.translatesAutoresizingMaskIntoConstraints = false
        nameLabel.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -25).isActive = true
        nameLabel.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 25).isActive = true
        nameLabel.topAnchor.constraint(equalTo: view.topAnchor, constant: 200).isActive = true
        nameLabel.heightAnchor.constraint(equalToConstant: 35).isActive = true
        nameLabel.widthAnchor.constraint(equalToConstant: 390).isActive = true
        nameLabel.textAlignment = .center
    }
}

extension ViewController {
    func viewsButton () {
        
        view.addSubview(buttonSignIn)
        view.addSubview(buttonRegister)
        
        buttonSignIn.layer.cornerRadius = 10
        buttonSignIn.setTitle("Sign In", for: .normal)
        buttonSignIn.backgroundColor = .blue
        buttonSignIn.addTarget(self, action: #selector(goToMenu), for: .touchUpInside)
        
        buttonRegister.layer.cornerRadius = 10
        buttonRegister.setTitle("Sign Up ", for: .normal)
        buttonRegister.addTarget(self,
                                 action: #selector(tapOnButton),
                                 for: .touchUpInside)
        buttonRegister.backgroundColor = .systemYellow
        buttonRegister.translatesAutoresizingMaskIntoConstraints = false
        buttonRegister.rightAnchor.constraint(equalTo:
                                                view.rightAnchor,
                                              constant: -95).isActive = true
        buttonRegister.leftAnchor.constraint(equalTo:
                                                view.leftAnchor,
                                             constant: 100).isActive = true
        buttonRegister.topAnchor.constraint(equalTo: view.topAnchor, constant: 590).isActive = true
        buttonRegister.heightAnchor.constraint(equalToConstant: 40).isActive = true
        buttonRegister.widthAnchor.constraint(equalToConstant: 250).isActive = true
        
        buttonSignIn.translatesAutoresizingMaskIntoConstraints = false
        buttonSignIn.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -95).isActive = true
        buttonSignIn.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 100).isActive = true
        buttonSignIn.topAnchor.constraint(equalTo: view.topAnchor, constant: 520).isActive = true
        buttonSignIn.heightAnchor.constraint(equalToConstant: 40).isActive = true
        buttonSignIn.widthAnchor.constraint(equalToConstant: 250).isActive = true
        
        
    }
    
    func forgotPasswordView() {
        view.addSubview(forgotPassword)
        
        forgotPassword.setTitle("Forgot password?", for: .normal)
        forgotPassword.setTitleColor(.systemBlue, for: .normal)
        forgotPassword.titleLabel?.font = UIFont.systemFont(ofSize: 13)
        forgotPassword.addTarget(self, action: #selector(addTap), for: .touchUpInside)
        
        forgotPassword.translatesAutoresizingMaskIntoConstraints = false
        forgotPassword.rightAnchor.constraint(equalTo: view.rightAnchor, constant: 75).isActive = true
        forgotPassword.topAnchor.constraint(equalTo: view.topAnchor, constant: 450).isActive = true
        forgotPassword.heightAnchor.constraint(equalToConstant: 40).isActive = true
        forgotPassword.widthAnchor.constraint(equalToConstant: 300).isActive = true
    }
    
    @objc
    func addTap() {
        
        let gotoForgotPassword = ForgotPasswordViewController()
        let vcForgotPassword = UINavigationController(rootViewController: gotoForgotPassword)
        vcForgotPassword.modalPresentationStyle = .fullScreen
        present(vcForgotPassword, animated: true)
    }
    
    @objc
    func tapOnButton() {
        let register = RegisterViewController()
        let registervc = UINavigationController(rootViewController: register )
        registervc.modalPresentationStyle = .fullScreen
        present(registervc, animated: true)
    }
    @objc
    func goToMenu() {
        func isTextFieldFilled(textField: UITextField) {
            guard let text = textField.text else  { return }
            if text.isEmpty {
                textField.layer.borderWidth = 2
                textField.layer.borderColor = UIColor.red.cgColor
            } else {
                textField.layer.borderWidth = 0
            }
        }
        isTextFieldFilled(textField: emailTF)
        isTextFieldFilled(textField: passwordTF)
    }
}

