//
//  NameAndTermOfUseViewModel.swift
//  SpotifyClone
//
//  Created by Felipe Henrique Domingos on 10/12/23.
//

import Foundation
import UIKit

class NameAndTermOfUseViewModel {
    
    var nameAndTermsOfUseView: NameAndTermOfUseView?
    private let nameAndTermOfUseViewController: NameAndTermOfUseViewController?
    weak var coordinator: MainCoordinator?
    var isCheckedTermsOfUse: Bool = false
    var isCheckedDismiss: Bool = false
    var isCheckedShareData: Bool = false
    
    init(nameAndTermsOfUseView: NameAndTermOfUseView, nameAndTermOfUseViewController: NameAndTermOfUseViewController, coordinator: MainCoordinator) {
        self.nameAndTermsOfUseView = nameAndTermsOfUseView
        self.nameAndTermOfUseViewController = nameAndTermOfUseViewController
        self.coordinator = coordinator
    }
    
    func updateTermsCheckboxState() {
        let imageName = isCheckedTermsOfUse ? "checkmark.circle.fill" : "circle"
            nameAndTermsOfUseView?.checkBoxTermOfUseButton.setImage(UIImage(systemName: imageName), for: .normal)
        guard let nameField = nameAndTermsOfUseView?.nameTextField.text?.count else { return }
        if imageName == "checkmark.circle.fill" && nameField > 3 {
            nameAndTermsOfUseView?.createAccountButton.isEnabled = true
            nameAndTermsOfUseView?.createAccountButton.backgroundColor = .white
        } else {
            nameAndTermsOfUseView?.createAccountButton.isEnabled = false
            nameAndTermsOfUseView?.createAccountButton.backgroundColor = .gray
        }
    }
    
    func  checkBoxTermsTappedButton() {
        nameAndTermsOfUseView?.checkBoxTermOfUseButton.addTarget(self, action: #selector(checkboxTapped), for: .touchUpInside)
    }
    
    @objc func checkboxTapped() {
        isCheckedTermsOfUse = !isCheckedTermsOfUse
        updateTermsCheckboxState()
    }
    
    //----------------------------------
    
    func updateDismissCheckboxState() {
        let imageName = isCheckedDismiss ? "checkmark.circle.fill" : "circle"
        nameAndTermsOfUseView?.checkBoxDismissMarketingButton.setImage(UIImage(systemName: imageName), for: .normal)
    }
    
    func  checkBoxDismissTappedButton() {
        nameAndTermsOfUseView?.checkBoxDismissMarketingButton.addTarget(self, action: #selector(checkboxDismissTapped), for: .touchUpInside)
    }
    
    @objc func checkboxDismissTapped() {
        isCheckedDismiss = !isCheckedDismiss
        updateDismissCheckboxState()
        nameAndTermsOfUseView?.createAccountButton.updateConfiguration()
    }
    
    //----------------------------------
    
    func updateShareDataCheckboxState() {
        let imageName = isCheckedShareData ? "checkmark.circle.fill" : "circle"
        nameAndTermsOfUseView?.checkBoxShareDataLabelButton.setImage(UIImage(systemName: imageName), for: .normal)
    }
    
    func  checkBoxShareDataTappedButton() {
        nameAndTermsOfUseView?.checkBoxShareDataLabelButton.addTarget(self, action: #selector(checkboxShareDataTapped), for: .touchUpInside)
    }
    
    @objc func checkboxShareDataTapped() {
        isCheckedShareData = !isCheckedShareData
        updateShareDataCheckboxState()
    }
    
    func createAccountTapped() {
        nameAndTermsOfUseView?.createAccountButton.addTarget(self, action: #selector(createAccountTappedButton), for: .touchUpInside)
    }
    
    @objc func createAccountTappedButton() {
        print("foi")
    }
    
    func termsWebViewButton() {
        nameAndTermsOfUseView?.termsOfUseButtonLink.addTarget(self, action: #selector(labelTermsTapped), for: .touchUpInside)
    }
    
    @objc func labelTermsTapped() {
        print("link")
    }
    
    
}
