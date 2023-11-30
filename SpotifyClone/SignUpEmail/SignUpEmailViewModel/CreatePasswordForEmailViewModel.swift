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
        // Alternando a visibilidade da senha
        createPasswordForEmailScreen.inputPasswordField.isSecureTextEntry.toggle()
        createPasswordForEmailScreen.showHideButton.isSelected = !createPasswordForEmailScreen.inputPasswordField.isSecureTextEntry
    }
}


