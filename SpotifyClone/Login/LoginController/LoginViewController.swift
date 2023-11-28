//
//  ViewController.swift
//  SpotifyClone
//
//  Created by Felipe Henrique Domingos on 25/11/23.
//

import UIKit

class LoginViewController: UIViewController {
    
    var loginVs: LoginViewScreen?
    var viewModel: LoginViewModel?
    weak var coordinator:  MainCoordinator?

    
    override func loadView() {
        loginVs = LoginViewScreen()
        view = loginVs
        
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        initViewModel()
    }
    
    func initViewModel() {
        if let loginVs = self.loginVs {
            if let coordinator = coordinator {
                viewModel = LoginViewModel(loginVS: loginVs, loginViewController: self, coordinator: coordinator)
                viewModel?.signUpButton()
            }
        }
    }
}

