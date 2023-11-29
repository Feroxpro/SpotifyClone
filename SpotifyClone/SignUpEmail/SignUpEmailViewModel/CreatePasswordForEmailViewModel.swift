//
//  CreatePasswordForEmailViewModel.swift
//  SpotifyClone
//
//  Created by Felipe Henrique Domingos on 29/11/23.
//

import Foundation
import UIKit

class CreatePasswordForEmailViewModel {
    
    var createPasswordForEmailScreen = CreatePasswordForEmailView()
    private let createPasswordForEmailController: CreatePasswordForEmailViewController?
    weak var coordinator: MainCoordinator?
    
    init (createPasswordForEmailScreen: CreatePasswordForEmailView, createPasswordForEmailController: CreatePasswordForEmailViewController, coordinator: MainCoordinator) {
        self.createPasswordForEmailScreen = createPasswordForEmailScreen
        self.createPasswordForEmailController = createPasswordForEmailController
        self.coordinator = coordinator
    }
}


