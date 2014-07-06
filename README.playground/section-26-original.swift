operator infix -- {}
@infix func -- (left: NSArray, right: NSArray) -> NSArray {
    var resultArray = NSMutableArray(array: left)
    for element:AnyObject in right {
        resultArray.removeObject(element)
    }
    return NSArray(array: resultArray)
}