//
//  UIImage+Extensions.swift
//  SpotifyClone
//
//  Created by Felipe Henrique Domingos on 26/11/23.
//

import Foundation
import UIKit

extension UIImage {
    func resized(to size: CGSize) -> UIImage {
        return UIGraphicsImageRenderer(size: size).image { _ in
            draw(in: CGRect(origin: .zero, size: size))
        }
    }
}
