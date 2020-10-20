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
    
    func maxDepth2(_ s:String) -> Int {
        //remove unneeded chars
        let output = stripChars(s)
        var left = 0
        var right = 0
        for x in 0..<(output.count){
            let index = output.index(output.startIndex, offsetBy: x)
            let char = output[index]
            
            var offSet = 0
            if x == output.count - 1 {
                offSet = x
            } else {
                offSet = x + 1
            }
            
            let nIndex = output.index(output.startIndex, offsetBy: offSet)
            let next = output[nIndex]
            
            
            if char == "(" {
                left += 1
            } else if char == ")" {
                right += 1
            }
            if char == ")" && next == "(" {
                left -= 1
                right -= 1
            }
        }
        
        if left == right {
            return left
        }
        return -421
    }
    
    func stripChars(_ str: String) -> String {
        let digitisCharSet = CharacterSet.decimalDigits
        let numbersRemove = String(str.unicodeScalars.filter{!digitisCharSet.contains($0)})
        let mathRemove = numbersRemove.filter{!"+-*/".contains($0) }
        return mathRemove
    }
}
