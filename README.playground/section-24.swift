operator infix ++= {}
@assignment func ++= (inout left: NSArray, right: NSArray) {
    left = left ++ right
}
