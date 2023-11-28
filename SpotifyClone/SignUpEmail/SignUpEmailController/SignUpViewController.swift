//
//  SignUpViewController.swift
//  SpotifyClone
//
//  Created by Felipe Henrique Domingos on 28/11/23.
//

import Foundation
import UIKit

class SignUpViewController: UIViewController {
    
    var signUpViewController: SignUpViewController?
    var signUpScreen: SignUpEmailView?
    weak var coordinator:  MainCoordinator?

    
    override func loadView() {
        signUpScreen = SignUpEmailView()
        view = signUpScreen
        
    }

    override func viewDidLoad() {
        super.viewDidLoad()
    }
}
