//
//  GenderView.swift
//  SpotifyClone
//
//  Created by Felipe Henrique Domingos on 05/12/23.
//

import Foundation
import UIKit
import SnapKit

class GenderView: BaseView {
    
    lazy var titleLabel: UILabel = {
        let label = Titlelabel(text: "Qual é o seu gênero?")
        return label
    }()
    
    lazy var genderTextField: UITextField = {
        let date = DefaultTextField()
        return date
    }()
    
    lazy var nextButton: UIButton = {
        let button = NextButton(title: "Avançar")
        return button
    }()
    
    override func addSubviews() {
        addSubview(titleLabel)
        addSubview(nextButton)
        addSubview(genderTextField)
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
    }
}
