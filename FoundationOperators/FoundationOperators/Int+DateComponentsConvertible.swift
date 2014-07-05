//
//  Int+DateComponentsConvertible.swift
//  FoundationOperators
//
//  Created by Jan Klausa on 05/07/14.
//  Copyright (c) 2014 Witek Przeciechowski. All rights reserved.
//

import Foundation

protocol DateComponentsConvertible {
    var years: NSDateComponents { get }
    var months: NSDateComponents { get }
    var days: NSDateComponents { get }
    var hours: NSDateComponents { get }
    var minutes: NSDateComponents { get }
    var seconds: NSDateComponents { get }
}

extension Int: DateComponentsConvertible {
    var years: NSDateComponents {
        let component = NSDateComponents()
        component.year = self
        return component
    }

    var months: NSDateComponents {
        let component = NSDateComponents()
        component.month = self
        return component
    }

    var days: NSDateComponents {
        let component = NSDateComponents()
        component.day = self
        return component
    }

    var hours: NSDateComponents {
        let component = NSDateComponents()
        component.hour = self
        return component
    }

    var minutes: NSDateComponents {
        let component = NSDateComponents()
        component.day = self
        return component
    }

    var seconds: NSDateComponents {
        let component = NSDateComponents()
        component.day = self
        return component
    }
}