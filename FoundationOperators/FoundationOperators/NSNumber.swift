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

@assignment func += (inout left: NSNumber, right: NSNumber) {
    left = left.doubleValue + right.doubleValue
}

@assignment func -= (inout left: NSNumber, right: NSNumber) {
    left = left.doubleValue - right.doubleValue
}

@assignment func *= (inout left: NSNumber, right: NSNumber) {
    left = left.doubleValue * right.doubleValue
}

@assignment func /= (inout left: NSNumber, right: NSNumber) {
    left = left.doubleValue / right.doubleValue
}

@prefix @assignment func ++ (inout operand: NSNumber) -> NSNumber {
    operand = operand.doubleValue + 1.0
    return operand
}

@prefix @assignment func -- (inout operand: NSNumber) -> NSNumber {
    operand = operand.doubleValue - 1.0
    return operand
}
