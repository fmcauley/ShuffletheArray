//
//  NumberOfPairs.swift
//  ShuffletheArray
//
//  Created by Frank McAuley on 9/30/20.
//

import Foundation

class NumberOfPairs {
    func numIdenticalPairs(_ nums: [Int]) -> Int {
        var counter = 0
        for x in 0..<nums.count {
            for y in 1..<nums.count{
                if x < y && nums[x] == nums[y] {
                    counter += 1
                } else {
                    continue
                }
            }
        }
        return counter
    }
}
