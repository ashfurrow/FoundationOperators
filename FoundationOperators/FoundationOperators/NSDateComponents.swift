//
//  NSDateComponents.swift
//  FoundationOperators
//
//  Created by Jan Klausa on 05/07/14.
//  Copyright (c) 2014 Witek Przeciechowski. All rights reserved.
//

import Foundation

@infix func +(lhs: NSDateComponents, rhs: NSDateComponents) -> NSDateComponents! {
    if (lhs.timeZone != rhs.timeZone) {
        return nil;
    }

    let component = NSDateComponents()
    component.setWeek(lhs.week() + rhs.week())
    component.era = lhs.era + rhs.era
    component.year = lhs.year + rhs.year
    component.month = lhs.month + rhs.month
    component.day = lhs.day + rhs.day
    component.hour = lhs.hour + rhs.hour
    component.minute = lhs.minute + rhs.minute
    component.second = lhs.second + rhs.second
    component.weekday = lhs.weekday + rhs.weekday
    component.weekdayOrdinal = lhs.weekdayOrdinal + rhs.weekdayOrdinal
    component.quarter = lhs.quarter + rhs.quarter
    component.weekOfMonth = lhs.weekOfMonth + rhs.weekOfMonth
    component.weekOfYear = lhs.weekOfYear + rhs.weekOfYear
    component.yearForWeekOfYear = lhs.yearForWeekOfYear + rhs.yearForWeekOfYear
    component.timeZone = lhs.timeZone

    return component
}

@infix func -(lhs: NSDateComponents, rhs: NSDateComponents) -> NSDateComponents! {
    if (lhs.timeZone != rhs.timeZone) {
        return nil;
    }

    let component = NSDateComponents()
    component.setWeek(lhs.week() - rhs.week())
    component.era = lhs.era - rhs.era
    component.year = lhs.year - rhs.year
    component.month = lhs.month - rhs.month
    component.day = lhs.day - rhs.day
    component.hour = lhs.hour - rhs.hour
    component.minute = lhs.minute - rhs.minute
    component.second = lhs.second - rhs.second
    component.weekday = lhs.weekday - rhs.weekday
    component.weekdayOrdinal = lhs.weekdayOrdinal - rhs.weekdayOrdinal
    component.quarter = lhs.quarter - rhs.quarter
    component.weekOfMonth = lhs.weekOfMonth - rhs.weekOfMonth
    component.weekOfYear = lhs.weekOfYear - rhs.weekOfYear
    component.yearForWeekOfYear = lhs.yearForWeekOfYear - rhs.yearForWeekOfYear
    component.timeZone = lhs.timeZone

    return component
}