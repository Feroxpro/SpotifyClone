//
//  UIFont+Extensions.swift
//  SpotifyClone
//
//  Created by Felipe Henrique Domingos on 28/11/23.
//

import Foundation
import UIKit

extension UIFont {
    func bold() -> UIFont {
        if let descriptor = fontDescriptor.withSymbolicTraits(.traitBold) {
            return UIFont(descriptor: descriptor, size: pointSize)
        } else {
            return self
        }
    }
}
