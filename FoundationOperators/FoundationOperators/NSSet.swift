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

@infix func ++ (left: NSSet, right: NSArray) -> NSSet {
    return left.setByAddingObjectsFromArray(right)
}

operator infix ++= {}

@assignment func ++= (inout left: NSSet, right: NSSet) {
    left = left ++ right
}

@assignment func ++= (inout left: NSSet, right: NSArray) {
    left = left ++ right
}

operator infix -- {}

@infix func -- (left: NSSet, right: NSSet) -> NSSet {
    var resultSet = NSMutableSet(set: left)
    resultSet.minusSet(right)
    return NSSet(set: resultSet)
}

@infix func -- (left: NSSet, right: NSArray) -> NSSet {
    var resultSet = NSMutableSet(set: left)
    resultSet.minusSet(NSSet(array: right))
    return NSSet(set: resultSet)
}

operator infix --= {}

@assignment func --= (inout left: NSSet, right: NSSet) {
    left = left -- right
}

@assignment func --= (inout left: NSSet, right: NSArray) {
    left = left -- right
}