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
        var output = 0
        var counter = 0
        
        while counter < strArr.count {
            if strArr[counter] != strArr[counter + 1] {
                output += 1
                counter += 2
            } else {
                counter += 1
            }
        }
        return output
    }
}
