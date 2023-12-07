//
//  SignUpViewModel.swift
//  SpotifyClone
//
//  Created by Felipe Henrique Domingos on 28/11/23.
//

import Foundation
import UIKit

class InsertEmailViewModel {
    
    var signUpScreen = InsertEmailView()
    private let signUpViewController: InsertEmailViewController?
    weak var coordinator: MainCoordinator?
    
    init (signUpScreen: InsertEmailView, signUpViewController: InsertEmailViewController, coordinator: MainCoordinator) {
        self.signUpScreen = signUpScreen
        self.signUpViewController = signUpViewController
        self.coordinator = coordinator
    }

    func isEmailValid() -> Bool {
        guard let email = signUpScreen.inputEmailField.text else {
            return false
        }
        
        let emailRegex = "[A-Z0-9a-z._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,}"
        let emailPredicate = NSPredicate(format: "SELF MATCHES %@", emailRegex)
        
        return emailPredicate.evaluate(with: email)
    }
    
    func updateNextButtonState() {
        let isValidEmail = isEmailValid()
        
        if isValidEmail {
            signUpScreen.nextButton.backgroundColor = .white
        } else {
            signUpScreen.nextButton.backgroundColor = .gray
        }
    }

    // Adicione a ação de destino para o evento EditingChanged do campo de e-mail
    @objc func emailTextFieldEditingChanged(_ textField: UITextField) {
        updateNextButtonState()
    }

    // Adicione a ação de destino para o evento EditingDidBegin do campo de e-mail
    @objc func emailTextFieldEditingDidBegin(_ textField: UITextField) {
        updateNextButtonState()
    }
    
    func updateButtonState() {
        signUpScreen.inputEmailField.addTarget(self, action: #selector(emailTextFieldEditingChanged(_:)), for: .editingChanged)
        signUpScreen.inputEmailField.addTarget(self, action: #selector(emailTextFieldEditingDidBegin(_:)), for: .editingDidBegin)
    }
    
    func signUpButton() {
        signUpScreen.nextButton.addTarget(self, action: #selector(getSignUpEmail), for: .touchUpInside)
    }
    
    @objc private func getSignUpEmail() {
        if isEmailValid() {
            coordinator?.goToCreatePasswordForEmail()
        }
    }
}


