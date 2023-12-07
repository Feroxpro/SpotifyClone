//
//  MainCoordinator.swift
//  MultitechOS
//
//  Created by Felipe Domingos on 08/04/23.
//

import UIKit

class MainCoordinator: Coordinator {
    
    var navigationController: UINavigationController
    
    var childCoordinators = [Coordinator] ()
    
    
    init(navigationController: UINavigationController) {
        self.navigationController = navigationController
    }
    
    func start() {
        let viewController = LoginViewController()
        viewController.coordinator = self
        navigationController.pushViewController(viewController, animated: true)
    }
    
    func goToSignUpEmail() {
        let viewController = InsertEmailViewController()
        viewController.coordinator = self
        navigationController.pushViewController(viewController, animated: true)
    }
    
    func goToCreatePasswordForEmail() {
        let viewController = CreatePasswordForEmailViewController()
        viewController.coordinator = self
        self.navigationController.pushViewController(viewController, animated: true)
    }
    func goToDateOfBirth() {
        let viewController = DateOfBirthViewController()
        viewController.coordinator = self
        self.navigationController.pushViewController(viewController, animated: true)
    }

    func goToGender() {
        let viewController = GenderViewController()
        viewController.coordinator = self
        self.navigationController.pushViewController(viewController, animated: true)
    }
    
    func goToNameAndTerm() {
        let viewController = NameAndTermOfUseViewController()
        viewController.coordinator = self
        self.navigationController.pushViewController(viewController, animated: true)
    }
//
//    func goToAddService() {
//        let viewController = AddServiceViewController()
//        viewController.coordinator = self
//        if #available(iOS 15.0, *) {
//            if let sheet = viewController.sheetPresentationController {
//                sheet.detents = [.medium(), .medium()]
//                sheet.prefersGrabberVisible = true
//                self.navigationController.present(viewController, animated: true)
//            }
//        }
    }
