//
//  CGPoint.swift
//
//  Created by Egor Tereshonok on 9/23/20.
//

import Foundation
import UIKit

extension CGPoint: Hashable {
    
    public func distance(point: CGPoint) -> CGFloat {
        let dx = (x - point.x)
        let dy = (y - point.y)
        return sqrt((dx * dx) + (dy * dy))
    }

    public func hash(into hasher: inout Hasher) {
        hasher.combine(x)
        hasher.combine(y)
    }
}


