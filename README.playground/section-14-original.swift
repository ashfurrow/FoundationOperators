@infix func - (array: NSArray, object: NSObject) -> NSArray {
    let mutableArray = NSMutableArray(array: array)
    mutableArray.removeObject(object)
    return NSArray(array: mutableArray)
}