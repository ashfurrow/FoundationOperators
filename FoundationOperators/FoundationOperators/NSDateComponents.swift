//
//  NSDateComponents.swift
//  FoundationOperators
//
//  Created by Jan Klausa on 05/07/14.
//  Copyright (c) 2014 Witek Przeciechowski. All rights reserved.
//

import Foundation

@infix func +(lhs: NSDateComponents, rhs: NSDateComponents) -> NSDateComponents! {

    func zeroIfNSUndefinedDateComponent(component: Int) -> Int {
        if (component == NSUndefinedDateComponent) {
            return 0
        }
        return component
    }

    if (lhs.timeZone != rhs.timeZone) {
        return nil;
    }

    let component = NSDateComponents()
    component.weekOfYear = zeroIfNSUndefinedDateComponent(lhs.weekOfYear) + zeroIfNSUndefinedDateComponent(rhs.weekOfYear)
    component.era = zeroIfNSUndefinedDateComponent(lhs.era) + zeroIfNSUndefinedDateComponent(rhs.era)
    component.year = zeroIfNSUndefinedDateComponent(lhs.year) + zeroIfNSUndefinedDateComponent(rhs.year)
    component.month = zeroIfNSUndefinedDateComponent(lhs.month) + zeroIfNSUndefinedDateComponent(rhs.month)
    component.day = zeroIfNSUndefinedDateComponent(lhs.day) + zeroIfNSUndefinedDateComponent(rhs.day)
    component.hour = zeroIfNSUndefinedDateComponent(lhs.hour) + zeroIfNSUndefinedDateComponent(rhs.hour)
    component.minute = zeroIfNSUndefinedDateComponent(lhs.minute) + zeroIfNSUndefinedDateComponent(rhs.minute)
    component.second = zeroIfNSUndefinedDateComponent(lhs.second) + zeroIfNSUndefinedDateComponent(rhs.second)
    component.weekday = zeroIfNSUndefinedDateComponent(lhs.weekday) + zeroIfNSUndefinedDateComponent(rhs.weekday)
    component.weekdayOrdinal = zeroIfNSUndefinedDateComponent(lhs.weekdayOrdinal) + zeroIfNSUndefinedDateComponent(rhs.weekdayOrdinal)
    component.quarter = zeroIfNSUndefinedDateComponent(lhs.quarter) + zeroIfNSUndefinedDateComponent(rhs.quarter)
    component.weekOfMonth = zeroIfNSUndefinedDateComponent(lhs.weekOfMonth) + zeroIfNSUndefinedDateComponent(rhs.weekOfMonth)
    component.weekOfYear = zeroIfNSUndefinedDateComponent(lhs.weekOfYear) + zeroIfNSUndefinedDateComponent(rhs.weekOfYear)
    component.yearForWeekOfYear = zeroIfNSUndefinedDateComponent(lhs.yearForWeekOfYear) + zeroIfNSUndefinedDateComponent(rhs.yearForWeekOfYear)
    component.timeZone = lhs.timeZone

    return component
}

@infix func -(lhs: NSDateComponents, rhs: NSDateComponents) -> NSDateComponents! {

    func zeroIfNSUndefinedDateComponent(component: Int) -> Int {
        if (component == NSUndefinedDateComponent) {
            return 0
        }
        return component
    }

    if (lhs.timeZone != rhs.timeZone) {
        return nil;
    }

    let component = NSDateComponents()
    component.weekOfYear = zeroIfNSUndefinedDateComponent(lhs.weekOfYear) - zeroIfNSUndefinedDateComponent(rhs.weekOfYear)
    component.era = zeroIfNSUndefinedDateComponent(lhs.era) - zeroIfNSUndefinedDateComponent(rhs.era)
    component.year = zeroIfNSUndefinedDateComponent(lhs.year) - zeroIfNSUndefinedDateComponent(rhs.year)
    component.month = zeroIfNSUndefinedDateComponent(lhs.month) - zeroIfNSUndefinedDateComponent(rhs.month)
    component.day = zeroIfNSUndefinedDateComponent(lhs.day) - zeroIfNSUndefinedDateComponent(rhs.day)
    component.hour = zeroIfNSUndefinedDateComponent(lhs.hour) - zeroIfNSUndefinedDateComponent(rhs.hour)
    component.minute = zeroIfNSUndefinedDateComponent(lhs.minute) - zeroIfNSUndefinedDateComponent(rhs.minute)
    component.second = zeroIfNSUndefinedDateComponent(lhs.second) - zeroIfNSUndefinedDateComponent(rhs.second)
    component.weekday = zeroIfNSUndefinedDateComponent(lhs.weekday) - zeroIfNSUndefinedDateComponent(rhs.weekday)
    component.weekdayOrdinal = zeroIfNSUndefinedDateComponent(lhs.weekdayOrdinal) - zeroIfNSUndefinedDateComponent(rhs.weekdayOrdinal)
    component.quarter = zeroIfNSUndefinedDateComponent(lhs.quarter) - zeroIfNSUndefinedDateComponent(rhs.quarter)
    component.weekOfMonth = zeroIfNSUndefinedDateComponent(lhs.weekOfMonth) - zeroIfNSUndefinedDateComponent(rhs.weekOfMonth)
    component.weekOfYear = zeroIfNSUndefinedDateComponent(lhs.weekOfYear) - zeroIfNSUndefinedDateComponent(rhs.weekOfYear)
    component.yearForWeekOfYear = zeroIfNSUndefinedDateComponent(lhs.yearForWeekOfYear) - zeroIfNSUndefinedDateComponent(rhs.yearForWeekOfYear)
    component.timeZone = lhs.timeZone

    return component
}