//
//  DateOfBirthView.swift
//  SpotifyClone
//
//  Created by Felipe Henrique Domingos on 30/11/23.
//

import Foundation
import UIKit
import SnapKit

class DateOfBirthView: BaseView {
    
    lazy var titleLabel: UILabel = {
        let label = Defaultlabel(text: "Qual é a sua data de nascimento?")
        return label
    }()
    
    lazy var dateTextField: UITextField = {
        let text = DefaultTextField()
        return text
    }()
    
    lazy var nextButton: UIButton = {
        let button = NextButton(title: "Avançar")
        return button
    }()
    
    lazy var noticeLabel: UILabel = {
        let label = NoticeLabel(text: "Sentimos muito, mas você não atende os requisitos de idade do spotify")
        label.isHidden = true
        return label
    }()
    
    override func addSubviews() {
        addSubview(titleLabel)
        addSubview(nextButton)
        addSubview(dateTextField)
        addSubview(noticeLabel)
    }
    
    override func configureConstraints() {
        
        titleLabel.snp.makeConstraints { make in
            make.top.equalTo(safeAreaLayoutGuide.snp.top).offset(20)
            make.leading.equalTo(safeAreaLayoutGuide).offset(5)
        }
        dateTextField.snp.makeConstraints { make in
            make.top.equalTo(titleLabel.snp.bottom).offset(5)
            make.leading.equalTo(safeAreaLayoutGuide).offset(5)
        }
        noticeLabel.snp.makeConstraints { make in
            make.top.equalTo(dateTextField.snp.bottom).offset(5)
            make.leading.equalTo(safeAreaLayoutGuide).offset(5)
        }
        nextButton.snp.makeConstraints { make in
            make.centerX.equalToSuperview()
            make.top.equalTo(noticeLabel.snp.bottom).offset(25)
        }
    }
}
