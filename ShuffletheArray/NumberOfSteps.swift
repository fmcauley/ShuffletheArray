//
//  NumberOfSteps.swift
//  ShuffletheArray
//
//  Created by Frank McAuley on 10/1/20.
//

import Foundation
class NumberOfSteps {
    func numberOfSteps(_ num: Int) -> Int {
        //how to handle powers of 2
        var count = 0
        var copyOfNum = num
        
        while copyOfNum != 0 {
            if copyOfNum %  2 == 0 {
                copyOfNum = copyOfNum / 2
                count += 1
            } else {
                copyOfNum -= 1
                count += 1
            }
        }
        return count
    }
}
