//
//  NSArray.swift
//  FoundationOperators
//
//  Created by Witek Przeciechowski on 05/07/2014.
//  Copyright (c) 2014 Witek Przeciechowski. All rights reserved.
//

import Foundation

@infix func + (inout array: NSArray, object: NSObject) -> NSArray {
    return array.arrayByAddingObject(object)
}

@assignment func += (inout array: NSArray, object: NSObject) {
    array = array + object
}

@infix func - (array: NSArray, object: NSObject) -> NSArray {
    let mutableArray = NSMutableArray(array: array)
    mutableArray.removeObject(object)
    return NSArray(array: mutableArray)
}

@assignment func -= (inout array: NSArray, object: NSObject) {
    array = array - object
}


operator infix ++ {}

@infix func ++ (left: NSArray, right: NSArray) -> NSArray {
    return left.arrayByAddingObjectsFromArray(right)
}

operator infix ++= {}

@assignment func ++= (inout left: NSArray, right: NSArray) {
    left = left ++ right
}

operator infix -- {}

@infix func -- (left: NSArray, right: NSArray) -> NSArray {
    var resultArray = NSMutableArray(array: left)
    for element:AnyObject in right {
        resultArray.removeObject(element)
    }
    return NSArray(array: resultArray)
}

operator infix --= {}

@assignment func --= (inout left: NSArray, right: NSArray) {
    left = left -- right
}