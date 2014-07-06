import Foundation

protocol DateComponentsConvertible {
    var years: NSDateComponents { get }
    var months: NSDateComponents { get }
    var days: NSDateComponents { get }
    var hours: NSDateComponents { get }
    var minutes: NSDateComponents { get }
    var seconds: NSDateComponents { get }
}