//
//  DefaultTextField.swift
//  SpotifyClone
//
//  Created by Felipe Henrique Domingos on 07/12/23.
//

import UIKit
import SnapKit

class DefaultTextField: UITextField {
   
    init() {
        super.init(frame: .zero)
        backgroundColor = .gray
        layer.cornerRadius = 5
        let paddingView = UIView(frame: CGRect(x: 0, y: 0, width: 10, height: frame.height))
            leftView = paddingView
            leftViewMode = .always
        
        snp.makeConstraints { make in
            make.height.equalTo(50)
            make.width.equalTo(400)
        }
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
