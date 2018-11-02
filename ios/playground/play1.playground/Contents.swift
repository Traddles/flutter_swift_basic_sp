import Cocoa
// Examples from https://www.appcoda.com/accelerate-framework/
import Accelerate
import simd

var points:[CGPoint] = [
    CGPoint(x: 0, y: 0),
    CGPoint(x: 0, y: 10),
    CGPoint(x: 0, y: 20),
    CGPoint(x: 0, y: 30),
    CGPoint(x: 0, y: 40),
    CGPoint(x: 0, y: 50),
    CGPoint(x: 0, y: 60),
    CGPoint(x: 0, y: 70),
    CGPoint(x: 0, y: 80)
]

let path = NSBezierPath()
path.move(to: points[0])

// IMP: Remove the space between the < and points
for i in 1..<points.count {
    path.line(to: points[i])
}
