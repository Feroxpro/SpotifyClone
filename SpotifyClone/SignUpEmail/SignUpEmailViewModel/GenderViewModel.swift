//
//  GenderViewModel.swift
//  SpotifyClone
//
//  Created by Felipe Henrique Domingos on 05/12/23.
//

import Foundation
import UIKit

import UIKit

class GenderViewModel: NSObject, UIPickerViewDataSource, UIPickerViewDelegate {

    var genderView: GenderView
    private let genderViewController: GenderViewController?
    weak var coordinator: MainCoordinator?
    let toolbar = UIToolbar()
    let pickerView = UIPickerView()
    let generos = ["Feminino", "Masculino", "Não binário", "Prefiro não dizer", "Outra opção"]

    init(genderView: GenderView, genderViewController: GenderViewController, coordinator: MainCoordinator) {
        self.genderView = genderView
        self.genderViewController = genderViewController
        self.coordinator = coordinator

        super.init()

        // Configurar UIPickerView
        pickerView.delegate = self
        pickerView.dataSource = self
    }
    
    func configureGenderPickerView() {
        genderView.genderTextField.inputView = pickerView  // Substitua genderTextField pelo nome do seu UITextField

        // Configurar toolbar com botão "OK"
        toolbar.barStyle = .default
        toolbar.isTranslucent = true
        toolbar.sizeToFit()
        let flexibleSpace = UIBarButtonItem(barButtonSystemItem: .flexibleSpace, target: nil, action: nil)
        let doneButton = UIBarButtonItem(title: "OK", style: .plain, target: self, action: #selector(doneButtonTapped))
        toolbar.setItems([flexibleSpace, doneButton], animated: false)
        toolbar.isUserInteractionEnabled = true
        genderView.genderTextField.inputAccessoryView = toolbar
        genderView.genderTextField.text = generos[0]

    }

    // MARK: - UIPickerViewDataSource

    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }

    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return generos.count
    }

    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return generos[row]
    }

    // MARK: - UIPickerViewDelegate

    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        genderView.genderTextField.text = generos[row]  // Substitua genderTextField pelo nome do seu UITextField
    }

    // MARK: - Toolbar Button Action

    @objc func doneButtonTapped() {
        genderView.genderTextField.resignFirstResponder()  // Substitua genderTextField pelo nome do seu UITextField
    }
}
