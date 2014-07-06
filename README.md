#FoundationOperators

Operator overloading is fun. It's also easy to get carried away. 

But this is a project for hackathon, so that's exactly what we did.

We overloaded the heck out of operators, and also extended Int.


## Int extension

We created very creatively named protocol `DateComponentsConvertible` and
provided implementation of it for Int.

`DateComponentsConvertible` is defined as:

```swift 
import Foundation

protocol DateComponentsConvertible {
    var years: NSDateComponents { get }
    var months: NSDateComponents { get }
    var days: NSDateComponents { get }
    var hours: NSDateComponents { get }
    var minutes: NSDateComponents { get }
    var seconds: NSDateComponents { get }
}
```

...and pretty horribly implemented like this:

```swift
extension Int: DateComponentsConvertible {
    var years: NSDateComponents {
        let component = NSDateComponents()
        component.year = self
        return component
    }

    var months: NSDateComponents {
        let component = NSDateComponents()
        component.month = self
        return component
    }

    var days: NSDateComponents {
        let component = NSDateComponents()
        component.day = self
        return component
    }

    var hours: NSDateComponents {
        let component = NSDateComponents()
        component.hour = self
        return component
    }

    var minutes: NSDateComponents {
        let component = NSDateComponents()
        component.day = self
        return component
    }

    var seconds: NSDateComponents {
        let component = NSDateComponents()
        component.day = self
        return component
    }
}
```

Which allows you to do cool stuff like this:

```swift
let quarter = 15.minutes
let workday = 8.hours
let timeSinceiPhoneIntroduction = 7.years
```

## Overloaded operators

We also overloaded a bunch of operators to help (and/or confuse) you while
working with Foundation types.

### NSArray
#### `+` operator
Defined as:

```swift
@infix func + (lhs: NSArray, rhs: NSObject) -> NSArray {
    return lhs.arrayByAddingObject(rhs)
}
```

Returns `NSArray` from the left hand side, with `NSObject` from the right hand
side appended at the end.

Not to be confused with ++ operator used to merge two arrays.

```swift
let randomObjects = [1, 2, 5.0, "something"]
let now = NSDate()

randomObjects + now //

```

#### `+=` operator

Definition:

```swift
@assignment func += (inout array: NSArray, object: NSObject) {
    array = array + object
}
```

Like `+`, but with 100% more assignment.

#### `-` operator

Definition:

```swift
@infix func - (array: NSArray, object: NSObject) -> NSArray {
    let mutableArray = NSMutableArray(array: array)
    mutableArray.removeObject(object)
    return NSArray(array: mutableArray)
}
```

Returns array from left hand side, with object from the right hand side
removed.

```swift
let array = ["foo", "bar", now]

let foobar = array - now //["foo", "bar"]
```

#### `-=` operator

Definition:

```swift
@assignment func -= (inout array: NSArray, object: NSObject) {
    array = array - object
}
```

Like `-`,but assigns.

#### `++` operator

Definition:

```swift
operator infix ++ {}
@infix func ++ (left: NSArray, right: NSArray) -> NSArray {
    return left.arrayByAddingObjectsFromArray(right)
}
```
Example:
```swift
let names: NSArray = ["tommy", "lee", "jones"]
let movies: NSArray = ["fugitive", "man_in_black"]

names + movies // ["tommy", "lee", "jones", "fugitive", "man_in_black"]
```

#### `++=` operator

Definition:

```swift
operator infix ++= {}
@assignment func ++= (inout left: NSArray, right: NSArray) {
    left = left ++ right
}
```

Like `++`, but assigns.

####  `--` operator

Removes objects contained in right hand side array from array on the left hand
side.

```swift
operator infix -- {}
@infix func -- (left: NSArray, right: NSArray) -> NSArray {
    var resultArray = NSMutableArray(array: left)
    for element:AnyObject in right {
        resultArray.removeObject(element)
    }
    return NSArray(array: resultArray)
}
```

Example:

```swift
let tommyLeeJones: NSArray = ["tommy", "lee", "jones"]
let leeJones: NSArray = ["lee", "jones"]

tommyLeeJones -- leeJones // ["tommy"]
```

#### `--=` operator

Like --, but assigns.
