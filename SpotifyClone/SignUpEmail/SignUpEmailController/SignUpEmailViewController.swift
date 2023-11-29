//
//  SignUpViewController.swift
//  SpotifyClone
//
//  Created by Felipe Henrique Domingos on 28/11/23.
//

import Foundation
import UIKit

class SignUpEmailViewController: UIViewController {
    
    var signUpScreen: SignUpEmailView?
    var viewModel: SignUpEmailViewModel?
    weak var coordinator:  MainCoordinator?

    
    override func loadView() {
        signUpScreen = SignUpEmailView()
        view = signUpScreen
        
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        initViewModel()
    }
    
    func initViewModel() {
        if let signUpScreen = self.signUpScreen {
            if let coordinator = coordinator {
                viewModel = SignUpEmailViewModel(signUpScreen: signUpScreen, signUpViewController: self, coordinator: coordinator)
                viewModel?.updateButtonState()
                viewModel?.signUpButton()
            }
        }
    }
}
