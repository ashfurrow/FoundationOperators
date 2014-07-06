operator infix ++ {}
@infix func ++ (left: NSArray, right: NSArray) -> NSArray {
    return left.arrayByAddingObjectsFromArray(right)
}