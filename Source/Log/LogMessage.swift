//
//  LogMessage.swift
//  goldSwift
//
//  Created by Egor Tereshonok on 11/23/20.
//


import Foundation

public enum LogType {
    
    case info
    case warning
    case error
}

public class LogMessage {
    
    public var type:     LogType
    public var location: String
    public var message:  String?
    
    public init(type: LogType, location: String, message: String?) {
        
        self.type     = type
        self.location = location
        self.message  = message
    }
}
