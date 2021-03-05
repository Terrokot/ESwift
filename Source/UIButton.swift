//
//  UIButton.swift
//
//  Created by Egor Tereshonok on 11/16/20.
//

import Foundation
import UIKit

public extension UIButton {
    func scaleImage(_ value: CGFloat) {
        guard let image = self.currentImage else { LogError("No image");  return }
        
        self.imageEdgeInsets = UIEdgeInsets(top: image.size.height * value,
                                            left: image.size.width * value,
                                            bottom: image.size.height * value,
                                            right: image.size.width * value)
    }
}
