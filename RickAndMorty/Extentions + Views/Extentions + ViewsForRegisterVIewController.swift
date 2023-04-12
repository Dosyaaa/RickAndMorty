//
//  Extentions + ViewsForRegisterVIewController.swift
//  RickAndMorty
//
//  Created by Mac on 15/4/2023.
//

import UIKit

private let registerName = UITextField(frame:
                                        CGRect(x: 20, y: 100,
                                               width: 400, height: 40))
private let labelName = UILabel(frame:
                                    CGRect(x: 25, y: 55,
                                           width: 100, height: 50))
private let registerSurename = UITextField(frame:
                                            CGRect(x: 20, y: 190,
                                                   width: 400, height: 40))
private let labelSureName = UILabel(frame:
                                        CGRect(x: 25, y: 145,
                                               width: 200, height: 50))
private let dateOfBirth = UITextField(frame:
                                        CGRect(x: 20, y: 280,
                                               width: 400, height: 40))
private let labelDateOfBirth = UILabel(frame:
                                        CGRect(x: 25, y: 240,
                                               width: 200, height: 50))
private let email = UITextField(frame:
                                    CGRect(x: 20, y: 370,
                                           width: 400, height: 40))
private let labelEmail = UILabel(frame:
                                    CGRect(x: 25, y: 325,
                                           width: 100, height: 50))
private let password =  UITextField(frame:
                                        CGRect(x: 20, y: 460,
                                               width: 400, height: 40))
private let labelPassword = UILabel(frame:
                                        CGRect(x: 25, y: 415,
                                               width: 100, height: 50))
private let buttonConfirm = UIButton(frame:
                                        CGRect(x: 95, y: 550,
                                               width: 250, height: 60))



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
