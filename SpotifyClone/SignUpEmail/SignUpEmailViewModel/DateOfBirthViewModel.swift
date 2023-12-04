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
            print(datePicker)
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
    
    private func showDatePicker() {
        dateOfBirthView.datePicker.becomeFirstResponder()
    }
    
    private func calcularIdade() -> Int? {
            guard let selectedDate = selectedDate else {
                return nil
            }
            
            let calendar = Calendar.current
            let currentDate = Date()
            let components = calendar.dateComponents([.year], from: selectedDate, to: currentDate)
            return components.year
        }
        
        @objc private func dismissDatePicker() {
            guard let selectedDate = selectedDate else {
                return
            }
            
            if let idade = calcularIdade(), idade >= 16 {
                dateOfBirthView.nextButton.backgroundColor = .white
                dateOfBirthView.nextButton.isEnabled = true
                dateOfBirthView.nextButton.updateConfiguration()
                dateOfBirthView.noticeLabel.isHidden = true
                dateOfBirthView.datePicker.textColor = .black
                dateOfBirthView.datePicker.backgroundColor = .gray
            } else {
                dateOfBirthView.noticeLabel.isHidden = false
                dateOfBirthView.datePicker.backgroundColor = .white
                dateOfBirthView.datePicker.textColor = .red
                dateOfBirthView.nextButton.updateConfiguration()
            }
            
            dateOfBirthView.datePicker.endEditing(true)
        }
    
    func nextButton() {
        dateOfBirthView.nextButton.addTarget(self, action: #selector(goForNextPage), for: .touchUpInside)
    }
    
    @objc private func goForNextPage() {
        print("GOGOGO")
        dismissDatePicker()
    }
}
