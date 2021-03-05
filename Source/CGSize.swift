//
//  CGSize.swift
//
//  Created by Egor Tereshonok on 11/14/20.
//

import Foundation
import UIKit

public extension CGSize {
    
    public static func * (left: CGSize, right: CGFloat) -> CGSize {
        return CGSize(width: left.width * right, height: left.height * right)
    }
}
