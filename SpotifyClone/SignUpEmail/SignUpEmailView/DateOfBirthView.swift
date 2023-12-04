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
    
    lazy var TitleLabel: UILabel = {
        let label = UILabel()
        label.text = "Qual é a sua data de nascimento?"
        label.textColor = UIColor.white
        let font = UIFont.systemFont(ofSize: 25)
        label.font = font.bold()
        return label
    }()
    
    lazy var datePicker: UITextField = {
        let date = UITextField()
        date.backgroundColor = .gray
        date.layer.cornerRadius = 5
        return date
    }()
    
    lazy var nextButton: UIButton = {
        let button = UIButton()
        button.backgroundColor = .gray
        button.setTitle("Avançar", for: .normal)
        button.setTitleColor(UIColor.black, for: .normal)
        let font = UIFont.systemFont(ofSize: 15)
        button.titleLabel?.font = font.bold()
        button.layer.cornerRadius = 24
        button.isEnabled = false
        return button
    }()
    
    lazy var noticeLabel: UILabel = {
        let label = UILabel()
        label.text = "Sentimos muito, mas você não atende os requisitos de idade do spotify"
        label.textColor = UIColor.white
        label.font = UIFont.systemFont(ofSize: 12)
        label.isHidden = true
        return label
    }()
    
    override func addSubviews() {
        addSubview(TitleLabel)
        addSubview(nextButton)
        addSubview(datePicker)
        addSubview(noticeLabel)
    }
    
    override func configureConstraints() {
        
        TitleLabel.snp.makeConstraints { make in
            make.top.equalTo(safeAreaLayoutGuide.snp.top).offset(20)
            make.leading.equalTo(safeAreaLayoutGuide).offset(5)
        }
        datePicker.snp.makeConstraints { make in
            make.top.equalTo(TitleLabel.snp.bottom).offset(5)
            make.leading.equalTo(safeAreaLayoutGuide).offset(5)
            make.height.equalTo(50)
            make.width.equalTo(400)
        }
        noticeLabel.snp.makeConstraints { make in
            make.top.equalTo(datePicker.snp.bottom).offset(5)
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
