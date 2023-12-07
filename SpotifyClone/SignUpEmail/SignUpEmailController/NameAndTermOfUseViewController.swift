//
//  NameAndTermOfUseViewController.swift
//  SpotifyClone
//
//  Created by Felipe Henrique Domingos on 07/12/23.
//

import UIKit

class NameAndTermOfUseViewController: UIViewController {
    
    var nameAndtermView: NameAndTermOfUseView?
    weak var coordinator:  MainCoordinator?
    
    override func loadView() {
        nameAndtermView = NameAndTermOfUseView()
        view = nameAndtermView
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
}
