//
//  GenderViewController.swift
//  SpotifyClone
//
//  Created by Felipe Henrique Domingos on 05/12/23.
//

import Foundation
import UIKit

class GenderViewController: UIViewController {
    
    var genderView: GenderView?
    var viewModel: GenderViewModel?
    weak var coordinator:  MainCoordinator?


    
    override func loadView() {
        genderView = GenderView()
        view = genderView
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        initViewModel()
        self.navigationController?.navigationBar.topItem?.title = ""
        self.navigationController?.navigationBar.tintColor = UIColor.white
    }
    
    func initViewModel() {
        if let genderView = self.genderView {
            if let coordinator = coordinator {
                viewModel = GenderViewModel(genderView: genderView, genderViewController: self, coordinator: coordinator)
                viewModel?.configureGenderPickerView()
                viewModel?.nextButton()
            }
        }
    }
}
