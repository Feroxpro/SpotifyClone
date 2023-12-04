//
//  DateOfBirthController.swift
//  SpotifyClone
//
//  Created by Felipe Henrique Domingos on 30/11/23.
//

import Foundation
import UIKit

class DateOfBirthViewController: UIViewController {
    
    var dateOfBirthView: DateOfBirthView?
    var viewModel: DateOfBirthViewModel?
    weak var coordinator:  MainCoordinator?


    
    override func loadView() {
        dateOfBirthView = DateOfBirthView()
        view = dateOfBirthView
        
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        initViewModel()
    }
    
    func initViewModel() {
        if let dateOfBirthView = self.dateOfBirthView {
            if let coordinator = coordinator {
                viewModel = DateOfBirthViewModel(dateOfBirthView: dateOfBirthView, dateOfBirthViewController: self, coordinator: coordinator)
                viewModel?.configureDatePicker()
                viewModel?.configureToolbar()
                viewModel?.nextButton()
                viewModel?.initialDateText()
            }
        }
    }
}
