//
//  NSSet.swift
//  FoundationOperators
//
//  Created by SwiftCrunch on 05/07/14.
//  Copyright (c) 2014 Witek Przeciechowski. All rights reserved.
//

import Foundation


@infix func + (set: NSSet, object: NSObject) -> NSSet {
    return set.setByAddingObject(object)
}

@assignment func += (inout set: NSSet, object: NSObject) {
    set = set + object
}

@infix func - (set: NSSet, object: NSObject) -> NSSet {
    let mutableSet = NSMutableSet(set: set)
    mutableSet.removeObject(object)
    return mutableSet
}

@assignment func -= (inout set: NSSet, object: NSObject) {
    set = set - object
}

operator infix ++ {}

@infix func ++ (left: NSSet, right: NSSet) -> NSSet {
    return left.setByAddingObjectsFromSet(right)
}

operator infix ++= {}

@assignment func ++= (inout left: NSSet, right: NSSet) {
    left = left ++ right
}

operator infix -- {}

@infix func -- (left: NSSet, right: NSSet) -> NSSet {
    var resultSet = NSMutableSet(set: left)
    for element:AnyObject in right {
        resultSet.removeObject(element)
    }
    return resultSet
}

operator infix --= {}

@assignment func --= (inout left: NSSet, right: NSSet) {
    left = left -- right
}
