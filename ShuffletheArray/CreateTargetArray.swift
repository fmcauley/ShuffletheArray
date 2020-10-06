//
//  CreateTargetArray.swift
//  ShuffletheArray
//
//  Created by Frank McAuley on 10/5/20.
//

import Foundation

class CreateTargetArray {
    
    func createTargetArray(_ nums:[Int], _ index:[Int]) -> [Int] {
        var output = Array(repeating: -1, count: nums.count)
        for x in 0..<nums.count {
            output.insert(nums[x], at: index[x])
        }
        return output.filter{ $0 >= 0}
    }
    
}
