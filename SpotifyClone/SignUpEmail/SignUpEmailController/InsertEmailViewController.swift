//
//  SignUpViewController.swift
//  SpotifyClone
//
//  Created by Felipe Henrique Domingos on 28/11/23.
//

import Foundation
import UIKit

class InsertEmailViewController: UIViewController {
    
    var signUpScreen: InsertEmailView?
    var viewModel: InsertEmailViewModel?
    weak var coordinator:  MainCoordinator?

    
    override func loadView() {
        signUpScreen = InsertEmailView()
        view = signUpScreen
        
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        initViewModel()
        configureNavigationBar() 
    }
    
    func initViewModel() {
        if let signUpScreen = self.signUpScreen {
            if let coordinator = coordinator {
                viewModel = InsertEmailViewModel(signUpScreen: signUpScreen, signUpViewController: self, coordinator: coordinator)
                viewModel?.updateButtonState()
                viewModel?.signUpButton()
            }
        }
    }
}
