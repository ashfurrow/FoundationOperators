//
//  NSDate.swift
//  FoundationOperators
//
//  Created by Witek Przeciechowski on 05/07/2014.
//  Copyright (c) 2014 Witek Przeciechowski. All rights reserved.
//

import Foundation

@infix func ==(lhs: NSDate, rhs: NSDate) -> Bool {
    return lhs == rhs
}

@infix func <=(lhs: NSDate, rhs: NSDate) -> Bool {
    return !(lhs > rhs)
}

@infix func >=(lhs: NSDate, rhs: NSDate) -> Bool {
    return (lhs == rhs) || (lhs > rhs)
}

@infix func >(lhs: NSDate, rhs: NSDate) -> Bool {
    return lhs.compare(rhs) == NSComparisonResult.OrderedAscending
}

@infix func <(lhs: NSDate, rhs: NSDate) -> Bool{
    return !(lhs < rhs)
}

extension NSDate: Comparable {

}