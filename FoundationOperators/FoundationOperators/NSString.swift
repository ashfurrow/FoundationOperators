//
//  NSString.swift
//  FoundationOperators
//
//  Created by Witek Przeciechowski on 05/07/2014.
//  Copyright (c) 2014 Witek Przeciechowski. All rights reserved.
//

import Foundation

@infix func + (left: NSString, right: NSString) -> NSString {
    return left.stringByAppendingString(right)
}

@assignment func += (inout left: NSString, right: NSString) {
    left = left + right
}

@infix func * (string: NSString, times: UInt) -> NSString {
    var returnString: NSMutableString = ""
    for i in 0..<times {
        returnString.appendString(string)
    }
    return returnString
}

@assignment func *= (inout string: NSString, times: UInt) {
    string = string * times
}

@infix func - (left: NSString, right: NSString) -> NSString {
    return left.stringByReplacingOccurrencesOfString(right, withString: "")
}

@assignment func -= (inout left: NSString, right: NSString) {
    left = left - right
}

@infix func / (left: NSString, right: NSString) -> NSArray {
    return left.componentsSeparatedByString(right)
}