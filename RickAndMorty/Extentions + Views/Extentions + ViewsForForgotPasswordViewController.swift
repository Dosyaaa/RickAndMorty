//
//  Extentions + ViewsForForgotPasswordViewController.swift
//  RickAndMorty
//
//  Created by Mac on 15/4/2023.
//

import UIKit

private let confirmPassword = UITextField(frame:
                                            CGRect(x: 20, y: 250,
                                                   width: 400, height: 40))
private let labelWarning = UILabel(frame:
                                    CGRect(x: 170, y: 100,
                                           width: 200, height: 40))
private let labelDescription = UILabel(frame:
                                        CGRect(x: 140, y: 140,
                                               width: 200, height: 40))
private let buttonCheck = UIButton(frame:
                                    CGRect(x: 95, y: 570,
                                           width: 250, height: 45))

extension ForgotPasswordViewController {
    
    func attention() {
        view.addSubview(confirmPassword)
        view.addSubview(labelWarning)
        view.addSubview(labelDescription)
        view.addSubview(buttonCheck)
        
        confirmPassword.placeholder = "X X X X "
        confirmPassword.borderStyle = .roundedRect
        
        labelWarning.text = "Warning!"
        labelWarning.tintColor = .black
        labelWarning.font = UIFont.systemFont(ofSize: 30)
        
        labelDescription.text = "if you forget account password, you can resume with Phone Number"
        labelDescription.numberOfLines = 0
        labelDescription.lineBreakMode = .byWordWrapping
        labelDescription.tintColor = .lightGray
        
        buttonCheck.layer.cornerRadius = 10
        buttonCheck.setTitle("Confirm", for: .normal)
        buttonCheck.backgroundColor = .blue
        buttonCheck.addTarget(self, action: #selector(check), for: .touchUpInside)
        
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

