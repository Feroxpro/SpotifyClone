//
//  CreatePasswordForEmailViewModel.swift
//  SpotifyClone
//
//  Created by Felipe Henrique Domingos on 29/11/23.
//

import Foundation
import UIKit

class CreatePasswordForEmailViewModel {
    
    var createPasswordForEmailScreen = CreatePasswordForEmailView()
    private let createPasswordForEmailController: CreatePasswordForEmailViewController?
    weak var coordinator: MainCoordinator?
    var isPasswordVisible = false

    
    init (createPasswordForEmailScreen: CreatePasswordForEmailView, createPasswordForEmailController: CreatePasswordForEmailViewController, coordinator: MainCoordinator) {
        self.createPasswordForEmailScreen = createPasswordForEmailScreen
        self.createPasswordForEmailController = createPasswordForEmailController
        self.coordinator = coordinator
    }
    
    func showHideAction() {
        createPasswordForEmailScreen.showHideButton.addTarget(self, action: #selector(togglePasswordVisibility), for: .touchUpInside)
            }

    @objc func togglePasswordVisibility() {
        createPasswordForEmailScreen.inputPasswordField.isSecureTextEntry.toggle()
        createPasswordForEmailScreen.showHideButton.isSelected = !createPasswordForEmailScreen.inputPasswordField.isSecureTextEntry
    }
    
    func updateNextButtonState() {
        if let textCount = createPasswordForEmailScreen.inputPasswordField.text?.count {
            if textCount >= 8 {
            createPasswordForEmailScreen.nextButton.backgroundColor = .white
            } else {
                createPasswordForEmailScreen.nextButton.backgroundColor = .gray
            }
        }
    }

    @objc func emailTextFieldEditingChanged(_ textField: UITextField) {
        updateNextButtonState()
    }

    @objc func emailTextFieldEditingDidBegin(_ textField: UITextField) {
        updateNextButtonState()
    }
    
    func updateButtonState() {
        createPasswordForEmailScreen.inputPasswordField.addTarget(self, action: #selector(emailTextFieldEditingChanged(_:)), for: .editingChanged)
        createPasswordForEmailScreen.inputPasswordField.addTarget(self, action: #selector(emailTextFieldEditingDidBegin(_:)), for: .editingDidBegin)
    }
    
    func signUpButton() {
        createPasswordForEmailScreen.nextButton.addTarget(self, action: #selector(getSignUpEmail), for: .touchUpInside)
    }
    
    @objc private func getSignUpEmail() {
        if let textCount = createPasswordForEmailScreen.inputPasswordField.text?.count {
            if textCount >= 8 {
                coordinator?.goToDateOfBirth()
            }
        }
    }
}


