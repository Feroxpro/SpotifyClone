//
//  NoticeLabel.swift
//  SpotifyClone
//
//  Created by Felipe Henrique Domingos on 07/12/23.
//

import UIKit

class NoticeLabel: UILabel {
   
    init(text: String) {
            super.init(frame: .zero)
            self.text = text
        textColor = UIColor.white
        font = UIFont.systemFont(ofSize: 12)

    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
