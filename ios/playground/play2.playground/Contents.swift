import Cocoa

var str = "Hello, playground"

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

var xs = points.compactMap { Float($0.x) }
var ys = points.compactMap { Float($0.y) }
var distance = [Float](repeating: 0, count: points.count)

vDSP_vdist(&xs, 1, &ys, 1, &distance, 1, vDSP_Length(points.count))
distance.map { $0 }

let result = distance.reduce(0, +)
