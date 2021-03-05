//Defaults.swift
//  Created 3.03.21
//  

import Foundation
 
@propertyWrapper
public struct Default<T: Codable> {
    private let key: String
    private let defaultValue: T!

    public init(key: String, defaultValue: T) {
        self.key = key
        self.defaultValue = defaultValue
    }
    public init(key: String) {
        self.key = key
        self.defaultValue = nil
    }
    public init(_ key: String = #file + String(#line)) {
        self.key = key
        self.defaultValue = nil
    }
    public init(defaultValue: T, _ key: String = #file + String(#line)) {
        self.key = key
        self.defaultValue = defaultValue
    }

    public var wrappedValue: T {
        get {
            // Read value from UserDefaults
            guard let data = UserDefaults.standard.object(forKey: key) as? Data else {
                // Return defaultValue when no data in UserDefaults
                return defaultValue
            }

            // Convert data to the desire data type
            let value = try? JSONDecoder().decode(T.self, from: data)
            return value ?? defaultValue
        }
        set {
            // Convert newValue to data
            let data = try? JSONEncoder().encode(newValue)
            
            // Set value to UserDefaults
            UserDefaults.standard.set(data, forKey: key)
        }
    }
}

