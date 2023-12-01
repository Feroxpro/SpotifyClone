//
//  DateOfBirthViewModel.swift
//  SpotifyClone
//
//  Created by Felipe Henrique Domingos on 30/11/23.
//

import Foundation
import UIKit

class DateOfBirthViewModel {
    
    var dateOfBirthView = DateOfBirthView()
    private let dateOfBirthViewController: DateOfBirthViewController?
    weak var coordinator: MainCoordinator?
    private let datePicker = UIDatePicker()
    private let toolbar = UIToolbar()
    
    
    init (dateOfBirthView: DateOfBirthView, dateOfBirthViewController: DateOfBirthViewController, coordinator: MainCoordinator) {
        self.dateOfBirthView = dateOfBirthView
        self.dateOfBirthViewController = dateOfBirthViewController
        self.coordinator = coordinator
    }
    
    public var selectedDate: Date? {
        get {
            return datePicker.date
        }
        set {
            datePicker.date = newValue ?? Date()
            updateTextField()
        }
    }
    
    func configureDatePicker() {
        datePicker.datePickerMode = .date
        datePicker.preferredDatePickerStyle = .wheels
        datePicker.locale = Locale(identifier: "pt_BR")
        
        
        let screenSize = UIScreen.main.bounds.size
        let datePickerHeight = datePicker.frame.size.height
        if let windowScene = UIApplication.shared.connectedScenes.first as? UIWindowScene {
            let bottomInset = windowScene.windows.first?.safeAreaInsets.bottom ?? 0
            let yPosition = screenSize.height - datePickerHeight - bottomInset
            datePicker.frame = CGRect(x: 0, y: yPosition, width: screenSize.width, height: datePickerHeight)
            
            dateOfBirthView.datePicker.inputView = datePicker
            datePicker.addTarget(self, action: #selector(updateTextField), for: .valueChanged)
        }
    }
    
    func configureToolbar() {
        toolbar.sizeToFit()
        let doneButton = UIBarButtonItem(title: "Concluído", style: .done, target: self, action: #selector(dismissDatePicker))
        toolbar.setItems([doneButton], animated: false)
        dateOfBirthView.datePicker.inputAccessoryView = toolbar
    }
    
    @objc private func updateTextField() {
        let dateFormatter = DateFormatter()
        dateFormatter.dateStyle = .medium
        dateFormatter.dateFormat = "dd 'de' MMMM 'de' yyyy"
        dateFormatter.locale = Locale(identifier: "pt_BR")
        dateOfBirthView.datePicker.text = dateFormatter.string(from: datePicker.date)
    }
    
    @objc private func dismissDatePicker() {
        print(dateOfBirthView.datePicker.text ?? "")
        guard let buceta = dateOfBirthView.datePicker.text else {return}
        calcularDiferencaEmDias()
        dateOfBirthView.datePicker.endEditing(true)
    }
    
    private func showDatePicker() {
        dateOfBirthView.datePicker.becomeFirstResponder()
    }
    
    func calcularDiferencaEmDias() {
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "dd 'de' MMMM 'de' yyyy"
        dateFormatter.locale = Locale(identifier: "pt_BR")

        guard let data1 = dateFormatter.date(from: dateOfBirthView.datePicker.text ?? ""),
              let data2 = dateFormatter.date(from: "1 de dezembro de 2023") else { return
        }

        let calendar = Calendar.current
        let year: Double = 365.25
        let components = calendar.dateComponents([.day], from: data1, to: data2)
        print(components.day / year)
    }
}
