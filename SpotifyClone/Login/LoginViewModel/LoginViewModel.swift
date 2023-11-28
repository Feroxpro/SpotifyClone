//
//  LoginViewModel.swift
//  SpotifyClone
//
//  Created by Felipe Henrique Domingos on 28/11/23.
//

import Foundation
import UIKit

class LoginViewModel {
    
    var loginVS = LoginViewScreen()
    private let loginViewController: LoginViewController?
    weak var coordinator: MainCoordinator?
    
    init (loginVS: LoginViewScreen, loginViewController: LoginViewController, coordinator: MainCoordinator) {
        self.loginVS = loginVS
        self.loginViewController = loginViewController
        self.coordinator = coordinator
    }
    
    func signUpButton() {
        loginVS.signInTextButton.addTarget(self, action: #selector(getSignUpEmail), for: .touchUpInside)
    }
    
    @objc private func getSignUpEmail() {
        coordinator?.goToSignUpEmail()
    }
}
