//
//  MaxNestingDepth.swift
//  ShuffletheArray
//
//  Created by Frank McAuley on 10/13/20.
//

import Foundation
class MaxNestingDepth {
    func maxDepth(_ s: String) -> Int {
                                                          
        if s.count <= 1 {
            return 0
        }
        
        var possiblePair = false
        
        var leftCount = 0
        var rightCount = 0
        
        for x in 0..<s.count {
            let sIndex = s.index(s.startIndex, offsetBy: x)
            let char = s[sIndex]
            if char == "(" {
                leftCount += 1
            } else if char == ")" {
                rightCount += 1
            }
            
            if leftCount > rightCount && rightCount >= 1 {
                possiblePair = true
            }
            
            if possiblePair && char == "(" { //this could signal a pair
                possiblePair = false
                leftCount -= 1
                rightCount -= 1
            }
        }
        
        if leftCount == rightCount {
           return leftCount
        }
        return -1
    }
}
