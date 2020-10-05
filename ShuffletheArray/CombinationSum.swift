//
//  CombinationSum.swift
//  ShuffletheArray
//
//  Created by Frank McAuley on 10/2/20.
//

import Foundation

class CombinationSum {
    func combinationSum(_ candidates: [Int], _ target: Int) -> [[Int]] {
        
        if candidates.count <= 1 {
            if let firstValue = candidates.first {
                if firstValue > target {
                    return [[0]]
                }
            }
        }
        
        var values = [[Int]]()
        
        for x in 0..<candidates.count {
            
            if candidates[x] == target {
                values.append([candidates[x]])
                continue
            }
            
            if target % candidates[x] == 0 {
                var temp = [Int]()
                for _ in 0..<target {
                    temp.append(candidates[x])
                }
                values.append(temp)
            }
            
            if candidates[x] < target {
                
            }
            
        }
        return values
    }
}
