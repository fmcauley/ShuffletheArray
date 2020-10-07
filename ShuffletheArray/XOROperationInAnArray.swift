//
//  XOROperationInAnArray.swift
//  ShuffletheArray
//
//  Created by Frank McAuley on 10/6/20.
//

import Foundation
class XOROperationInAnArray {
    func xorOperation(_ n: Int, _ start: Int) -> Int {
        //nums[i] = start + 2*i
        var values = [Int]()
        for x in 0..<n {
            values.append(start + (2*x))
        }
        
        return values.reduce(0){$0^$1}
    }
}
