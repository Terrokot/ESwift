//
//  String.swift
//  goldSwift
//
//  Created by Egor Tereshonok on 11/23/20.
//

import Foundation

public extension String {
    var lastPathComponent: String {
        return self.components(separatedBy: "/").last ?? ""
    }
}
