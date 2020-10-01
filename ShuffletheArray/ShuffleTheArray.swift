//
//  ShuffleTheArray.swift
//  ShuffletheArray
//
//  Created by Frank McAuley on 9/30/20.
//

import Foundation
class ShuffletheArray {
    func shuffle(_ nums:[Int], _ n: Int) -> [Int] {
        
        let arr1 = Array(nums[0..<n])
        let arr2 = Array(nums[n..<nums.endIndex])
        
        var returnArray = [Int]()
        
        for x in 0..<n {
            returnArray.append(arr1[x])
            returnArray.append(arr2[x])
        }
        
        return returnArray
    }
}
