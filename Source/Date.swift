//
//  Date.swift
//
//  Created by Egor Tereshonok on 8/6/20.
//  Copyright © 2020 Egor Tereshonok. All rights reserved.
//

import Foundation

public extension Date {
    
    //MARK: - Elements
    
    var second:        Int { return Calendar.current.component(.second,  from: self) }
    var minute:        Int { return Calendar.current.component(.minute,  from: self) }
    var hour:          Int { return Calendar.current.component(.hour,    from: self) }
    var day:           Int { return Calendar.current.component(.day,     from: self) }
    var month:         Int { return Calendar.current.component(.month,   from: self) }
    var year:          Int { return Calendar.current.component(.year,    from: self) }
    var weekdayNumber: Int { return Calendar.current.component(.weekday, from: self) }
    
    static func today() -> Date {
        let current = Date()
        var dateComponents = DateComponents()
        dateComponents.year = current.year
        dateComponents.month = current.month
        dateComponents.day = current.day 
        return NSCalendar(calendarIdentifier: .gregorian)!.date(from: dateComponents)!
    }
}
