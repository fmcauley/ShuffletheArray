//
//  SmallerThanCurrent.swift
//  ShuffletheArray
//
//  Created by Frank McAuley on 10/1/20.
//

import Foundation

class SmallerThanCurrent {
    func smallerNumbersThanCurrent(_ nums: [Int]) -> [Int] {
        var counter = 0
        var returnArr = [Int]()
        
        for x in 0..<nums.count {
            for y in 0..<nums.count {
                if nums[x] > nums[y] {
                    counter += 1
                }
            }
            returnArr.append(counter)
            counter = 0
        }
        return returnArr
    }
}
