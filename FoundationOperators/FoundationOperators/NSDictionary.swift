//
//  NSDictionary.swift
//  FoundationOperators
//
//  Created by SwiftCrunch on 05/07/14.
//  Copyright (c) 2014 Witek Przeciechowski. All rights reserved.
//

import Foundation

@infix func + (dictionary: NSDictionary, tuple: (NSObject: NSCopying, NSObject)) -> NSDictionary {
    var resultDictionary = NSMutableDictionary(dictionary: dictionary)
    resultDictionary.setObject(tuple.1, forKey: tuple.0)
    return resultDictionary
}

@assignment func += (inout dictionary: NSDictionary, tuple: (NSObject: NSCopying, NSObject)) {
    dictionary = dictionary + tuple
}

@infix func ++ (left: NSDictionary, right: NSDictionary) -> NSDictionary {
    var resultDictionary = NSMutableDictionary(dictionary: left)
    resultDictionary.addEntriesFromDictionary(right)
    return resultDictionary
}

operator infix ++= {}

@infix func ++= (inout left: NSDictionary, right: NSDictionary) {
    left = left ++ right
}