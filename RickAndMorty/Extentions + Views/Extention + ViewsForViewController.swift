//
//  Extention + ViewsForViewController.swift
//  RickAndMorty
//
//  Created by Mac on 15/4/2023.
//

import UIKit

private let buttonRegister = UIButton(frame:
                                        CGRect(x: 95, y: 630,
                                               width: 250, height: 45))
private let forgotPassword = UIButton(frame:
                                        CGRect(x: 295, y: 500,
                                               width: 110, height: 30))
private let emailTF = UITextField(frame:
                                    CGRect(x: 20, y: 360,
                                           width: 390, height: 40))
private let passwordTF = UITextField(frame:
                                        CGRect(x: 20, y: 460,
                                               width: 390, height: 40))
private let buttonSignIn = UIButton(frame:
                                        CGRect(x: 95, y: 570,
                                               width: 250, height: 45))
private let labelEntry = UILabel(frame:
                                    CGRect(x: 25, y: 315,
                                           width: 200, height: 40))
private let labelPassword = UILabel(frame:
                                        CGRect(x: 25, y: 420,
                                               width: 100, height: 40))
private let nameLabel = UILabel(frame:
                                    CGRect(x:  122,y: 230,
                                           width: 300, height: 50))

extension ViewController {
    
    func viewForViewController() {
        view.addSubview(passwordTF)
        view.addSubview(emailTF)
        view.addSubview(labelEntry)
        view.addSubview(labelPassword)
        view.addSubview(nameLabel)
        
        emailTF.placeholder = "Email"
        passwordTF.placeholder = "Password"
        
        emailTF.borderStyle = .roundedRect
        passwordTF.borderStyle = .roundedRect
        
        labelEntry.tintColor = .gray
        labelEntry.text = "Employeed / id"
        labelEntry.font = UIFont.systemFont(ofSize: 20)
        
        labelPassword.tintColor = .black
        labelPassword.text = "Password"
        labelPassword.font = UIFont.systemFont(ofSize: 20)
        
        nameLabel.tintColor = .black
        nameLabel.text = "Rick And Morty"
        nameLabel.font = UIFont.systemFont(ofSize: 30)
       
        
    }
}

extension ViewController {
    func viewsButton () {
        
        view.addSubview(buttonSignIn)
        view.addSubview(buttonRegister)
        
        buttonSignIn.layer.cornerRadius = 10
        buttonSignIn.setTitle("Sign In", for: .normal)
        buttonSignIn.backgroundColor = .blue
        buttonSignIn.addTarget(self,
                               action: #selector(goToMenu),
                               for: .touchUpInside)
        
        buttonRegister.layer.cornerRadius = 10
        buttonRegister.setTitle("Sign Up ", for: .normal)
        buttonRegister.addTarget(self,
                                 action: #selector(tapOnButton),
                                 for: .touchUpInside)
        buttonRegister.backgroundColor = .systemYellow
    }
    
    func forgotPasswordView() {
        view.addSubview(forgotPassword)
        
        forgotPassword.setTitle("Forgot password?", for: .normal)
        forgotPassword.setTitleColor(.systemBlue, for: .normal)
        forgotPassword.titleLabel?.font = UIFont.systemFont(ofSize: 13)
        forgotPassword.addTarget(self,
                                 action: #selector(addTap),
                                 for: .touchUpInside)
    }
    
    @objc
    func addTap() {
        
        let seco = ForgotPasswordViewController()
        let vc = UINavigationController(rootViewController:seco)
        present(vc, animated: true)
    }
    
    @objc
    func tapOnButton() {
        let register = RegisterViewController()
        let vc = UINavigationController(rootViewController: register )
        present(vc, animated: true)
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
