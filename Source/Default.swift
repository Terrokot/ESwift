//Defaults.swift
//  Created 3.03.21
//  

import Foundation
 
@propertyWrapper
public struct Default<T: Codable & DefaultInitializable> {
    private let key: String
    private var defaultValue: T? = nil

    public init(key: String, defaultValue: T) {
        self.key = key
        self.defaultValue = defaultValue
    }
    
    public init(key: String) {
        self.key = key
    }
    public init(_ key: String = #file + String(#line)) {
        self.key = key
    }
    
    public var wrappedValue: T {
        get {
            
            // Read value from UserDefaults
            guard let data = UserDefaults.standard.object(forKey: key) as? Data else {
                guard  let def = defaultValue  else { return T.defaultValue }
                return def
            }

            // Convert data to the desire data type
            let value = try? JSONDecoder().decode(T.self, from: data)
            return value ?? T.defaultValue
        }
        set {
            // Convert newValue to data
            let data = try? JSONEncoder().encode(newValue)
            
            // Set value to UserDefaults
            UserDefaults.standard.set(data, forKey: key)
        }
    }
}

public protocol DefaultInitializable {
    static var defaultValue: Self { get }

}
extension Bool: DefaultInitializable {
    public static var defaultValue: Bool { Bool() }
}

extension String: DefaultInitializable {
    public static var defaultValue: String { String() }
}

extension Double: DefaultInitializable {
    public static var defaultValue: Double { Double() }
}

extension Int: DefaultInitializable {
    public static var defaultValue: Int { Int() }
}

extension Dictionary: DefaultInitializable {
    public static var defaultValue: Dictionary { Dictionary() }
}

extension Array: DefaultInitializable {
    public static var defaultValue: Array<Element> { Array() }
}

extension Optional: DefaultInitializable {
    public static var defaultValue: Optional<Wrapped> { nil }
}


