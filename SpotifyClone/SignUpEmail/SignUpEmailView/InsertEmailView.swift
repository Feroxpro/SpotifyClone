//
//  SignUpEmailView.swift
//  SpotifyClone
//
//  Created by Felipe Henrique Domingos on 28/11/23.
//

import Foundation
import UIKit
import SnapKit

class InsertEmailView: BaseView {
    
    lazy var titleLabel: UILabel = {
        let label = Titlelabel(text: "Qual o seu E-mail")
        return label
    }()
    
    lazy var inputEmailField: UITextField = {
        let textField = DefaultTextField()
        textField.text = "felipe@gmail.com"
        return textField
    }()
    
    lazy var noticeLabel: UILabel = {
        let label = DefaultLabel(text: "Você vai ter que confirmar esse e-mail mais tarde.")
        return label
    }()
    
    lazy var nextButton: UIButton = {
        let button = NextButton(title: "Avançar")
        return button
    }()
    
    override func addSubviews() {
        addSubview(titleLabel)
        addSubview(inputEmailField)
        addSubview(noticeLabel)
        addSubview(nextButton)
    }
    
    override func configureConstraints() {
        
        titleLabel.snp.makeConstraints { make in
            make.top.equalTo(safeAreaLayoutGuide.snp.top).offset(20)
            make.leading.equalTo(safeAreaLayoutGuide).offset(5)
        }
        inputEmailField.snp.makeConstraints { make in
            make.top.equalTo(titleLabel.snp.bottom).offset(5)
            make.leading.equalTo(safeAreaLayoutGuide).offset(5)
        }
        noticeLabel.snp.makeConstraints { make in
            make.top.equalTo(inputEmailField.snp.bottom).offset(5)
            make.leading.equalTo(safeAreaLayoutGuide).offset(5)
        }
        nextButton.snp.makeConstraints { make in
            make.centerX.equalToSuperview()
            make.top.equalTo(noticeLabel.snp.bottom).offset(25)
        }
    }
}
