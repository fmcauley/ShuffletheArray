//
//  DecompressRunLengthEncodingList.swift
//  ShuffletheArray
//
//  Created by Frank McAuley on 10/5/20.
//

import Foundation
class DecompressRunLengthEncodingList {
    func decompressRLElist(_ nums: [Int]) -> [Int] {
        var values = [Int]()
        let iterations = nums.count
        for x in 0..<iterations { //the count shold be a mod % 2 == check
            if x % 2 != 0 {
                continue
            }
            let freq = nums[x]
            let value = nums[x + 1]
            generateFreq(freq, value, &values)
        }
        return values
    }
    
    private func generateFreq(_ freq: Int, _ value:Int, _ values: inout[Int]) {
        for _ in 0..<freq {
            values.append(value)
        }
    }
}
