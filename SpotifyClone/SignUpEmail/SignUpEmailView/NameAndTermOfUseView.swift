//
//  NameAndTermOfUse.swift
//  SpotifyClone
//
//  Created by Felipe Henrique Domingos on 07/12/23.
//

import Foundation
import UIKit
import SnapKit

class NameAndTermOfUseView: BaseView {
    
    lazy var titleLabel: UILabel = {
        let label = Titlelabel(text: "Qual é o seu nome?")
        return label
    }()
    
    lazy var nameTextField: UITextField = {
        let date = DefaultTextField()
        return date
    }()
    
    lazy var noticeLabel: UILabel = {
        let label = DefaultLabel(text: "Isso vai aparecer no seu perfil do spotify")
        return label
    }()
    
    lazy var mandatoryLabel: UILabel = {
        let label = DefaultLabel(text: " OBRIGATÓRIO ")
        label.textColor = .black
        label.font = UIFont.systemFont(ofSize: 10)
        label.backgroundColor = .gray
        label.layer.cornerRadius = 3
        label.clipsToBounds = true
        return label
    }()
    
    lazy var iAgreeTermsOfUseLabel: UILabel = {
        let label = DefaultLabel(text: "Eu concordo com os Termos de Uso do Spotify.")
        return label
    }()
    
    lazy var checkBoxTermOfUseButton: UIButton = {
        let button = UIButton()
        button.tintColor = .white
        return button
    }()
    
    lazy var termsOfUseButtonLink: UIButton = {
        let button = UIButton()
        button.setTitle("Termos de uso", for: .normal)
        button.setTitleColor(.green, for: .normal)
        let font = UIFont.systemFont(ofSize: 11)
        button.titleLabel?.font = font.bold()
        button.isEnabled = true
        return button
    }()
    
    lazy var lgpdTermsLabel: UILabel = {
        let label = DefaultLabel(text: "Para saber mais sobre como o Spotify coleta, utiliza, compartilha e protege seus dados pessoais, leia a Política de Privacidade do Spotify.")
            label.numberOfLines = 0
        return label
    }()
    
    lazy var lgpdButtonLink: UILabel = {
        let label = DefaultLabel(text: "Política de Privacidade")
        label.textColor = UIColor.green
        return label
    }()
    
    lazy var dismissMarketingLabel: UILabel = {
        let label = DefaultLabel(text: "Não quero receber mensagens de marketing do Spotify.")
        return label
    }()
    
    lazy var checkBoxDismissMarketingButton: UIButton = {
        let button = UIButton()
        button.tintColor = .white
        return button
    }()
    
    lazy var shareDataLabel: UILabel = {
        let label = DefaultLabel(text: "Compartilhar meus dados cadastrais com os provedores de \nconteúdo do Spotify para fins de marketing.")
            label.numberOfLines = 0
        return label
    }()
    
    lazy var checkBoxShareDataLabelButton: UIButton = {
        let button = UIButton()
        button.tintColor = .white
        return button
    }()
    
    lazy var createAccountButton: UIButton = {
        let button = NextButton(title: "Criar conta")
        button.isEnabled = false
        return button
    }()
    
    override func addSubviews() {
        addSubview(titleLabel)
        addSubview(nameTextField)
        addSubview(noticeLabel)
        addSubview(mandatoryLabel)
        addSubview(iAgreeTermsOfUseLabel)
        addSubview(termsOfUseButtonLink)
        addSubview(checkBoxTermOfUseButton)
        addSubview(lgpdTermsLabel)
        addSubview(lgpdButtonLink)
        addSubview(dismissMarketingLabel)
        addSubview(shareDataLabel)
        addSubview(checkBoxDismissMarketingButton)
        addSubview(checkBoxShareDataLabelButton)
        addSubview(createAccountButton)
    }
    
    override func configureConstraints() {
        
        titleLabel.snp.makeConstraints { make in
            make.top.equalTo(safeAreaLayoutGuide.snp.top).offset(20)
            make.leading.equalTo(safeAreaLayoutGuide).offset(5)
        }
        nameTextField.snp.makeConstraints { make in
            make.top.equalTo(titleLabel.snp.bottom).offset(5)
            make.leading.equalTo(safeAreaLayoutGuide).offset(5)
        }
        noticeLabel.snp.makeConstraints { make in
            make.top.equalTo(nameTextField.snp.bottom).offset(5)
            make.leading.equalTo(safeAreaLayoutGuide).offset(5)
        }
        mandatoryLabel.snp.makeConstraints { make in
            make.top.equalTo(noticeLabel.snp.bottom).offset(50)
            make.leading.equalTo(safeAreaLayoutGuide).offset(5)
        }
        iAgreeTermsOfUseLabel.snp.makeConstraints { make in
            make.top.equalTo(mandatoryLabel.snp.bottom).offset(10)
            make.leading.equalTo(safeAreaLayoutGuide).offset(5)
        }
        termsOfUseButtonLink.snp.makeConstraints { make in
            make.top.equalTo(iAgreeTermsOfUseLabel.snp.bottom).offset(20)
            make.leading.equalTo(safeAreaLayoutGuide).offset(5)
        }
        checkBoxTermOfUseButton.snp.makeConstraints { make in
            make.top.equalTo(mandatoryLabel.snp.bottom).offset(10)
            make.trailing.equalTo(safeAreaLayoutGuide).inset(5)
        }
        lgpdTermsLabel.snp.makeConstraints { make in
            make.top.equalTo(termsOfUseButtonLink.snp.bottom).offset(20)
            make.leading.equalTo(safeAreaLayoutGuide).offset(5)
            make.trailing.equalTo(safeAreaLayoutGuide).inset(5)
        }
        lgpdButtonLink.snp.makeConstraints { make in
            make.top.equalTo(lgpdTermsLabel.snp.bottom).offset(20)
            make.leading.equalTo(safeAreaLayoutGuide).inset(5)
        }
        dismissMarketingLabel.snp.makeConstraints { make in
            make.top.equalTo(lgpdButtonLink.snp.bottom).offset(20)
            make.leading.equalTo(safeAreaLayoutGuide).offset(5)
        }
        checkBoxDismissMarketingButton.snp.makeConstraints { make in
            make.top.equalTo(dismissMarketingLabel.snp.top)
            make.trailing.equalTo(safeAreaLayoutGuide).inset(5)
        }
        shareDataLabel.snp.makeConstraints { make in
            make.top.equalTo(dismissMarketingLabel.snp.bottom).offset(20)
            make.leading.equalTo(safeAreaLayoutGuide).offset(5)
        }
        checkBoxShareDataLabelButton.snp.makeConstraints { make in
            make.top.equalTo(shareDataLabel.snp.top)
            make.trailing.equalTo(safeAreaLayoutGuide).inset(5)
        }
        createAccountButton.snp.makeConstraints { make in
            make.centerX.equalToSuperview()
            make.bottom.equalTo(safeAreaLayoutGuide.snp.bottom).inset(30)
        }
    }
}
