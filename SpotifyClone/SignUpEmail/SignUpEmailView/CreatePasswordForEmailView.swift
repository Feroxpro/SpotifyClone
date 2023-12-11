//
//  CreatePasswordEmailView.swift
//  SpotifyClone
//
//  Created by Felipe Henrique Domingos on 29/11/23.
//

import Foundation
import UIKit
import SnapKit

class CreatePasswordForEmailView: BaseView {
    
    lazy var titleLabel: UILabel = {
        let label = Titlelabel(text: "Crie uma senha?")
        return label
    }()
    
    lazy var inputPasswordField: UITextField = {
        let textField = DefaultTextField()
        textField.text = "12345678"
        textField.isSecureTextEntry = true
        textField.keyboardType = .emailAddress
        return textField
    }()
    
    lazy var showHideButton: UIButton = {
        let button = UIButton(type: .custom)
        button.tintColor = .white
        button.setImage(UIImage(systemName: "eye"), for: .normal)
        button.setImage(UIImage(systemName: "eye.slash"), for: .selected)
        button.frame = CGRect(x: 0, y: 0, width: 30, height: 30)
        return button
    }()
    
    lazy var noticeLabel: UILabel = {
        let label = DefaultLabel(text: "Use pelo menos 8 caracteres.")
        return label
    }()
    
    lazy var nextButton: UIButton = {
        let button = NextButton(title: "Avançar")
        return button
    }()
    
    override func addSubviews() {
        addSubview(titleLabel)
        addSubview(inputPasswordField)
        addSubview(showHideButton)
        addSubview(noticeLabel)
        addSubview(nextButton)
    }
    
    override func configureConstraints() {
        
        titleLabel.snp.makeConstraints { make in
            make.top.equalTo(safeAreaLayoutGuide.snp.top).offset(20)
            make.leading.equalTo(safeAreaLayoutGuide).offset(5)
        }
        inputPasswordField.snp.makeConstraints { make in
            make.top.equalTo(titleLabel.snp.bottom).offset(5)
        }
        showHideButton.snp.makeConstraints { make in
            make.centerY.equalTo(inputPasswordField)
            make.trailing.equalTo(inputPasswordField.snp.trailing).offset(-10)
        }
        noticeLabel.snp.makeConstraints { make in
            make.top.equalTo(inputPasswordField.snp.bottom).offset(5)
            make.leading.equalTo(safeAreaLayoutGuide).offset(5)
        }
        nextButton.snp.makeConstraints { make in
            make.centerX.equalToSuperview()
            make.top.equalTo(noticeLabel.snp.bottom).offset(25)
        }
    }
}
