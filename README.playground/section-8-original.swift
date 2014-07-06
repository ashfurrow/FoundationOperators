@infix func + (lhs: NSArray, rhs: NSObject) -> NSArray {
    return lhs.arrayByAddingObject(rhs)
}