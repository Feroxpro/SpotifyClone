//
//  NameAndTermOfUseViewController.swift
//  SpotifyClone
//
//  Created by Felipe Henrique Domingos on 07/12/23.
//

import UIKit

class NameAndTermOfUseViewController: UIViewController {
    
    var nameAndtermView: NameAndTermOfUseView?
    var viewModel: NameAndTermOfUseViewModel?
    weak var coordinator:  MainCoordinator?
    override func loadView() {
        nameAndtermView = NameAndTermOfUseView()
        view = nameAndtermView
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        initViewModel()
        configureNavigationBar() 
    }
    
    func initViewModel() {
        if let nameAndtermView = self.nameAndtermView {
            if let coordinator = coordinator {
                viewModel = NameAndTermOfUseViewModel(nameAndTermsOfUseView: nameAndtermView, nameAndTermOfUseViewController: self, coordinator: coordinator)
                viewModel?.checkBoxTermsTappedButton()
                viewModel?.updateTermsCheckboxState()
                viewModel?.updateDismissCheckboxState()
                viewModel?.checkBoxDismissTappedButton()
                viewModel?.checkBoxShareDataTappedButton()
                viewModel?.updateShareDataCheckboxState()
                viewModel?.termsWebViewButton()
                viewModel?.privacyPoliceWebViewButton()
            }
        }
    }
}
