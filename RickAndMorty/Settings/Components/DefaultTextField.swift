//
//  File.swift
//  RickAndMorty
//
//  Created by Kamila on 15/4/23.
//

import UIKit

class DefaultTextField: UITextField {
    private let padding = UIEdgeInsets(top: 0, left: 10, bottom: 0, right: 10)
    
    init(placeholder: String, text: String) {
        super.init(frame: .zero)
        configureUI(placeholder: placeholder, txt: text)
    }
    
    @available(*, unavailable)
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func textRect(forBounds bounds: CGRect) -> CGRect {
        bounds.inset(by: padding)
    }
    
    override func placeholderRect(forBounds bounds: CGRect) -> CGRect {
        bounds.inset(by: padding)
    }
    
    override func editingRect(forBounds bounds: CGRect) -> CGRect {
        bounds.inset(by: padding)
    }
    
    private func configureUI(placeholder: String, txt: String) {
        text = txt
        textColor = .white
        
        layer.cornerRadius = 10
        layer.backgroundColor =  #colorLiteral(red: 1, green: 1, blue: 1, alpha: 0)
        layer.borderColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
        layer.borderWidth = 1
        
        attributedPlaceholder = NSAttributedString(string: placeholder, attributes: [NSAttributedString.Key.foregroundColor: UIColor.white ])
        font = .systemFont(ofSize: 15, weight: .regular)
    }
}
