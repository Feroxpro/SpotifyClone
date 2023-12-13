//
//  CreatePasswordEmailViewController.swift
//  SpotifyClone
//
//  Created by Felipe Henrique Domingos on 29/11/23.
//

import Foundation
import UIKit

class CreatePasswordForEmailViewController: UIViewController {
    
    var createPasswordScreen: CreatePasswordForEmailView?
    var viewModel: CreatePasswordForEmailViewModel?
    weak var coordinator:  MainCoordinator?

    
    override func loadView() {
        createPasswordScreen = CreatePasswordForEmailView()
        view = createPasswordScreen
        
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        initViewModel()
        configureNavigationBar() 
    }
    
    func initViewModel() {
        if let createPasswordScreen = self.createPasswordScreen {
            if let coordinator = coordinator {
                viewModel = CreatePasswordForEmailViewModel.init(createPasswordForEmailScreen: createPasswordScreen, createPasswordForEmailController: self, coordinator: coordinator)
                viewModel?.showHideAction()
                viewModel?.updateButtonState()
                viewModel?.signUpButton()
            }
        }
    }
}
