//
//  NameAndTermOfUse.swift
//  SpotifyClone
//
//  Created by Felipe Henrique Domingos on 07/12/23.
//

import Foundation
import UIKit

class NameAndTermOfUseView: BaseView {
    
    lazy var titleLabel: UILabel = {
        let label = Defaultlabel(text: "Qual é o seu nome?")
        return label
    }()
    
    lazy var genderTextField: UITextField = {
        let date = DefaultTextField()
        return date
    }()
    
    lazy var nextButton: UIButton = {
        let button = NextButton(title: "Isso vai aparecer no seu perfil do spotify")
        return button
    }()
    
    lazy var mandatoryLabel: UILabel = {
        let label = NoticeLabel(text: " OBRIGATÓRIO ")
        label.textColor = .black
        label.backgroundColor = .gray
        label.layer.cornerRadius = 5
        return label
    }()

    override func addSubviews() {
        addSubview(titleLabel)
        addSubview(nextButton)
        addSubview(genderTextField)
        addSubview(mandatoryLabel)
    }
    
    override func configureConstraints() {
        
        titleLabel.snp.makeConstraints { make in
            make.top.equalTo(safeAreaLayoutGuide.snp.top).offset(20)
            make.leading.equalTo(safeAreaLayoutGuide).offset(5)
        }
        genderTextField.snp.makeConstraints { make in
            make.top.equalTo(titleLabel.snp.bottom).offset(5)
            make.leading.equalTo(safeAreaLayoutGuide).offset(5)
        }
        
        nextButton.snp.makeConstraints { make in
            make.centerX.equalToSuperview()
            make.top.equalTo(genderTextField.snp.bottom).offset(40)
        }
        mandatoryLabel.snp.makeConstraints { make in
            make.top.equalTo(nextButton.snp.bottom).offset(60)
            make.leading.equalTo(safeAreaLayoutGuide).offset(5)
        }
    }
}
