//
//  NavigationItens+Extensions.swift
//  SpotifyClone
//
//  Created by Felipe Henrique Domingos on 13/12/23.
//

import Foundation
import UIKit

extension UIViewController {
    
    func configureNavigationBar() {
        navigationController?.navigationBar.topItem?.title = ""
        navigationController?.navigationBar.tintColor = UIColor.white
        navigationItem.title = "Criar Conta"
        navigationController?.isNavigationBarHidden = false
        navigationController?.navigationBar.titleTextAttributes = [NSAttributedString.Key.foregroundColor: UIColor.white]
    }
}
