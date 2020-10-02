//
//  MaxDistance.swift
//  ShuffletheArray
//
//  Created by Frank McAuley on 10/1/20.
//

import Foundation

class MaxDistance {
    func maxDistance(_ arrays: [[Int]]) -> Int {
        var distance = 0
        
        for x in 0..<arrays.count {
            var min = -1
            var max = -1
            
            if let minValue = arrays[x].min(){
                min = minValue
            }
            if let maxValue = arrays[x].max(){
                max = maxValue
            }
            for y in 1..<arrays.count {
                
                if arrays[x] == arrays[y] {
                    break
                }
                
                var minY = -1
                var maxY = -1
                
                if let minYValue = arrays[y].min() {
                    minY = minYValue
                }
                if let maxYValue = arrays[y].max() {
                    maxY = maxYValue
                }
                
                let minMaxY = abs(min - maxY)
                let maxMinY = abs(minY - max)
                
                if minMaxY > maxMinY {
                    if minMaxY > distance {
                        distance = minMaxY
                    }
                } else {
                    if maxMinY > distance {
                        distance = maxMinY
                    }
                }
            }
        }
        
        
        return distance
    }
}
