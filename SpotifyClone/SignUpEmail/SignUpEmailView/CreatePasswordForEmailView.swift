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
    
    lazy var TitleLabel: UILabel = {
        let label = UILabel()
        label.text = "Crie uma senha?"
        label.textColor = UIColor.white
        let font = UIFont.systemFont(ofSize: 25)
        label.font = font.bold()
        return label
    }()
    
    lazy var inputPasswordField: UITextField = {
        let textField = UITextField()
        textField.backgroundColor = .gray
        textField.layer.cornerRadius = 5
        return textField
    }()
    
    lazy var showHideButton: UIButton = {
        let button = UIButton(type: .custom)
        button.setImage(UIImage(named: "eye"), for: .normal)
        button.setImage(UIImage(named: "eye.slash"), for: .selected)
        button.frame = CGRect(x: 0, y: 0, width: 30, height: 30)
        return button
    }()
    
    lazy var noticeLabel: UILabel = {
        let label = UILabel()
        label.text = "Use pelo menos 8 caracteres."
        label.textColor = UIColor.white
        label.font = UIFont.systemFont(ofSize: 12)
        return label
    }()
    
    lazy var nextButton: UIButton = {
        let button = UIButton()
        button.backgroundColor = .gray
        button.setTitle("Avançar", for: .normal)
        button.setTitleColor(UIColor.black, for: .normal)
        let font = UIFont.systemFont(ofSize: 15)
        button.titleLabel?.font = font.bold()
        button.layer.cornerRadius = 24
        return button
    }()
    
    override func addSubviews() {
        addSubview(TitleLabel)
        addSubview(inputPasswordField)
        inputPasswordField.addSubview(showHideButton)
        addSubview(noticeLabel)
        addSubview(nextButton)
    }
    
    override func configureConstraints() {
        
        TitleLabel.snp.makeConstraints { make in
            make.top.equalTo(safeAreaLayoutGuide.snp.top).offset(20)
            make.leading.equalTo(safeAreaLayoutGuide).offset(5)
        }
        inputPasswordField.snp.makeConstraints { make in
            make.top.equalTo(TitleLabel.snp.bottom).offset(5)
            make.leading.equalTo(safeAreaLayoutGuide).offset(5)
            make.height.equalTo(50)
            make.width.equalTo(400)
        }
        showHideButton.snp.makeConstraints { make in
            make.centerY.equalToSuperview()
            make.centerX.equalToSuperview()
        }
        noticeLabel.snp.makeConstraints { make in
            make.top.equalTo(inputPasswordField.snp.bottom).offset(5)
            make.leading.equalTo(safeAreaLayoutGuide).offset(5)
        }
        nextButton.snp.makeConstraints { make in
            make.centerX.equalToSuperview()
            make.top.equalTo(noticeLabel.snp.bottom).offset(25)
            make.height.equalTo(45)
            make.width.equalTo(120)
        }
    }
}
