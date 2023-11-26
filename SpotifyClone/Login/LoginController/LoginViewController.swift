//
//  ViewController.swift
//  SpotifyClone
//
//  Created by Felipe Henrique Domingos on 25/11/23.
//

import UIKit

class ViewController: UIViewController {
    
    var loginVs: LoginViewScreen?

    
    override func loadView() {
        loginVs = LoginViewScreen()
        view = loginVs
        
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

