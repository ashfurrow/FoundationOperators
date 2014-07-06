//
//  NSDate.swift
//  FoundationOperators
//
//  Created by Witek Przeciechowski on 05/07/2014.
//  Copyright (c) 2014 Witek Przeciechowski. All rights reserved.
//

import Foundation

@infix func ==(lhs: NSDate, rhs: NSDate) -> Bool {
    return lhs.isEqualToDate(rhs)
}

@infix func <=(lhs: NSDate, rhs: NSDate) -> Bool {
    return !(lhs > rhs)
}

@infix func >=(lhs: NSDate, rhs: NSDate) -> Bool {
    return (lhs == rhs) || (lhs > rhs)
}

@infix func >(lhs: NSDate, rhs: NSDate) -> Bool {
    return lhs.compare(rhs) == NSComparisonResult.OrderedDescending
}

@infix func <(lhs: NSDate, rhs: NSDate) -> Bool {
    return !(lhs > rhs)
}

@infix func -(lhs: NSDate, rhs:NSDate) -> NSTimeInterval {
    return lhs.timeIntervalSinceDate(rhs)
}

@infix func +(lhs: NSDate, rhs:NSDateComponents) -> NSDate! {
    let calendar = NSCalendar.currentCalendar()
    return calendar.dateByAddingComponents(rhs, toDate: lhs, options: NSCalendarOptions())
}

@infix func -(lhs: NSDate, rhs:NSDateComponents) -> NSDate! {
    let negativeComponent = NSDateComponents() - rhs
    return lhs + negativeComponent
}

extension NSDate: Comparable {
}