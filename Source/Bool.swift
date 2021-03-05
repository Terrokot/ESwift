//Bool.swift
//  Created 5.03.21
//  

import Foundation

public extension Bool {
    mutating func switchValue() {
        self = self == true ? false : true
    }
}
