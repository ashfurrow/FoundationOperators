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