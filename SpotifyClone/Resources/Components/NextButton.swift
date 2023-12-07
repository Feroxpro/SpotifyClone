//
//  DefaultButton+UIButton.swift
//  MultitechOS
//
//  Created by Felipe Domingos on 13/04/23.
//

import UIKit
import SnapKit

class NextButton: UIButton {
   
    init(title: String) {
        super.init(frame: .zero)
        setTitle(title, for: .normal)
        setTitleColor(.white, for: .normal)
        backgroundColor = .gray
        layer.cornerRadius = 24
        setTitleColor(UIColor.black, for: .normal)
        let font = UIFont.systemFont(ofSize: 15)
        titleLabel?.font = font.bold()
        
        snp.makeConstraints { make in
            make.width.equalTo(120)
            make.height.equalTo(45)
        }
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
