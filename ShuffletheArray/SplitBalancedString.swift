//
//  SplitBalancedString.swift
//  ShuffletheArray
//
//  Created by Frank McAuley on 10/7/20.
//

import Foundation

class SplitBalancedString {
    func balancedStringSplit(_ s: String) -> Int {
       
        let strArr = Array(s)
        var counter = 0
        var R = 0
        var L = 0
        var output = 0
        
        while counter < strArr.count {
            if strArr[counter] == "R"{
                R += 1
                counter += 1
            } else if strArr[counter] == "L" {
                L += 1
                counter += 1
            }
            if R > 0 && L > 0 && R == L {
                output += 1
                R = 0
                L = 0
            }
        }
        return output
    }
}
