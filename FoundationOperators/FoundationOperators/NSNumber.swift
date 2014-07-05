//
//  NSNumber.swift
//  FoundationOperators
//
//  Created by Witek Przeciechowski on 05/07/2014.
//  Copyright (c) 2014 Witek Przeciechowski. All rights reserved.
//

import Foundation

@infix func + (left: NSNumber, right: NSNumber) -> NSNumber {
    return left.doubleValue + right.doubleValue
}

@infix func - (left: NSNumber, right: NSNumber) -> NSNumber {
    return left.doubleValue - right.doubleValue
}

@infix func * (left: NSNumber, right: NSNumber) -> NSNumber {
    return left.doubleValue * right.doubleValue
}

@infix func / (left: NSNumber, right: NSNumber) -> NSNumber {
    return left.doubleValue / right.doubleValue
}