//
//  LoginView.swift
//  SpotifyClone
//
//  Created by Felipe Henrique Domingos on 25/11/23.
//

import SnapKit
import UIKit


class LoginViewScreen: BaseView {
    
    lazy var logoImage: UIImageView = {
        let img = UIImageView()
        img.image = UIImage(named: "logo")
        return img
    }()
    
    lazy var titleLogin: UILabel = {
        let label = UILabel()
        label.numberOfLines = 0
        label.text = "Milhões de músicas à sua \nescolha. \nGrátis no Spotify."
        label.textColor = UIColor.white
        let font = UIFont.systemFont(ofSize: 30)
        label.font = font.bold()
        label.textAlignment = .center
        return label
    }()
    
    lazy var signInTextButton: UIButton = {
        let button = UIButton()
        button.backgroundColor = .greenSpotify
        button.layer.cornerRadius = 20
        button.setTitle("Inscreva-se grátis", for: .normal)
        button.contentHorizontalAlignment = .center
        button.setTitleColor(UIColor.black, for: .normal)
        let font = UIFont.systemFont(ofSize: 15)
        button.titleLabel?.font = font.bold()
        return button
    }()
    
    lazy var signInPhoneButton: UIButton = {
        let button = UIButton()
        button.backgroundColor = .black
        button.layer.cornerRadius = 20
        button.setTitle("Continuar com um número de \ntelefone", for: .normal)
        button.titleLabel?.numberOfLines = 0
        button.titleLabel?.textAlignment = .center
        button.setTitleColor(UIColor.white, for: .normal)
        let font = UIFont.systemFont(ofSize: 15)
        button.titleLabel?.font = font.bold()
        button.layer.borderWidth = 0.8
        button.layer.borderColor = UIColor.gray.cgColor
        return button
    }()
    
    lazy var imageSignInPhoneButton: UIImageView = {
        var image = UIImageView()
        image.image = UIImage(systemName: "iphone.smartbatterycase.gen2")
        image.tintColor = .white
        return image
        }()
    
    lazy var signInGoogleButton: UIButton = {
        let button = UIButton()
        button.backgroundColor = .black
        button.layer.cornerRadius = 20
        button.setTitle("Continuar com o Google", for: .normal)
        button.setTitleColor(UIColor.white, for: .normal)
        let font = UIFont.systemFont(ofSize: 15)
        button.titleLabel?.font = font.bold()
        button.layer.borderWidth = 0.8
        button.layer.borderColor = UIColor.gray.cgColor
        return button
    }()
    
    lazy var imageSignInGoogleButton: UIImageView = {
        var image = UIImageView()
        image.image = UIImage(named: "google")
        image.tintColor = .white
        return image
        }()

    lazy var signInFacebookButton: UIButton = {
        let button = UIButton()
        button.backgroundColor = .black
        button.layer.cornerRadius = 20
        button.setTitle("Continuar com o Facebook", for: .normal)
        button.titleLabel?.textAlignment = .center
        button.setTitleColor(UIColor.white, for: .normal)
        let font = UIFont.systemFont(ofSize: 15)
        button.titleLabel?.font = font.bold()
        button.layer.borderWidth = 0.8
        button.layer.borderColor = UIColor.gray.cgColor
        return button
    }()
    
    lazy var imageSignInFacebookButton: UIImageView = {
        var image = UIImageView()
        image.image = UIImage(named: "facebook")
        image.tintColor = .white
        return image
        }()
    
    lazy var signInAppleButton: UIButton = {
        let button = UIButton()
        button.backgroundColor = .black
        button.layer.cornerRadius = 20
        button.setTitle("Continuar com o Apple", for: .normal)
        button.titleLabel?.textAlignment = .center
        button.setTitleColor(UIColor.white, for: .normal)
        let font = UIFont.systemFont(ofSize: 15)
        button.titleLabel?.font = font.bold()
        button.layer.borderWidth = 0.8
        button.layer.borderColor = UIColor.gray.cgColor
        return button
    }()
    
    lazy var imageSignInAppleButton: UIImageView = {
        var image = UIImageView()
        image.image = UIImage(named: "apple")
        image.tintColor = .white
        return image
        }()
    
    lazy var signInEmailAndPasswordButton: UIButton = {
        let button = UIButton()
        button.backgroundColor = .black
        button.setTitle("Entrar", for: .normal)
        button.titleLabel?.textAlignment = .center
        button.setTitleColor(UIColor.white, for: .normal)
        let font = UIFont.systemFont(ofSize: 15)
        button.titleLabel?.font = font.bold()
        return button
    }()
    
    override func addSubviews() {
        addSubview(logoImage)
        addSubview(titleLogin)
        addSubview(signInTextButton)
        addSubview(signInPhoneButton)
        signInPhoneButton.addSubview(imageSignInPhoneButton)
        addSubview(signInGoogleButton)
        signInGoogleButton.addSubview(imageSignInGoogleButton)
        addSubview(signInFacebookButton)
        signInFacebookButton.addSubview(imageSignInFacebookButton)
        addSubview(signInAppleButton)
        signInAppleButton.addSubview(imageSignInAppleButton)
        addSubview(signInEmailAndPasswordButton)
    }
    
    override func configureConstraints() {
        
        logoImage.snp.makeConstraints { make in
            make.centerX.equalToSuperview()
            make.top.equalTo(safeAreaLayoutGuide.snp.top).offset(250)
            make.width.equalTo(40)
            make.height.equalTo(40)
        }
        titleLogin.snp.makeConstraints { make in
            make.centerX.equalToSuperview()
            make.top.equalTo(logoImage.snp.bottom).offset(10)
            make.trailing.equalTo(safeAreaLayoutGuide.snp.trailing)
            make.leading.equalTo(safeAreaLayoutGuide.snp.leading)
        }
        signInTextButton.snp.makeConstraints { make in
            make.centerX.equalToSuperview()
            make.top.equalTo(titleLogin.snp.bottom).offset(30)
            make.height.equalTo(44)
            make.width.equalTo(340)
        }
        signInPhoneButton.snp.makeConstraints { make in
            make.centerX.equalToSuperview()
            make.top.equalTo(signInTextButton.snp.bottom).offset(10)
            make.height.equalTo(44)
            make.width.equalTo(340)
        }
        
        imageSignInPhoneButton.snp.makeConstraints { make in
            make.centerY.equalToSuperview()
            make.leading.equalTo(signInPhoneButton.snp.leading).offset(15)
            make.height.equalTo(20)
            make.width.equalTo(20)
        }
        
        signInGoogleButton.snp.makeConstraints { make in
            make.centerX.equalToSuperview()
            make.top.equalTo(signInPhoneButton.snp.bottom).offset(10)
            make.height.equalTo(44)
            make.width.equalTo(340)
        }
        
        imageSignInGoogleButton.snp.makeConstraints { make in
            make.centerY.equalToSuperview()
            make.leading.equalTo(signInGoogleButton.snp.leading).offset(15)
            make.height.equalTo(20)
            make.width.equalTo(20)
        }
        signInFacebookButton.snp.makeConstraints { make in
            make.centerX.equalToSuperview()
            make.top.equalTo(signInGoogleButton.snp.bottom).offset(10)
            make.height.equalTo(44)
            make.width.equalTo(340)
        }
        
        imageSignInFacebookButton.snp.makeConstraints { make in
            make.centerY.equalToSuperview()
            make.leading.equalTo(signInFacebookButton.snp.leading).offset(15)
            make.height.equalTo(20)
            make.width.equalTo(20)
        }
        signInAppleButton.snp.makeConstraints { make in
            make.centerX.equalToSuperview()
            make.top.equalTo(signInFacebookButton.snp.bottom).offset(10)
            make.height.equalTo(44)
            make.width.equalTo(340)
        }
        
        imageSignInAppleButton.snp.makeConstraints { make in
            make.centerY.equalToSuperview()
            make.leading.equalTo(signInAppleButton.snp.leading).offset(15)
            make.height.equalTo(20)
            make.width.equalTo(20)
        }
        
        signInEmailAndPasswordButton.snp.makeConstraints { make in
            make.centerX.equalToSuperview()
            make.top.equalTo(signInAppleButton.snp.bottom).offset(20)
        }
    }
}



