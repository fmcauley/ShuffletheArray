//
//  SubtractProductAndSum.swift
//  ShuffletheArray
//
//  Created by Frank McAuley on 10/2/20.
//

import Foundation

class SubtractProductAndSum {
    
    func subtractProductAndSum(_ n: Int) -> Int {
        var number = n
        var args = [Int]()
        
        while number != 0 {
            args.append(number % 10)
            number /= 10
        }
        let product = args.reduce(1){$0*$1}
        let sum = args.reduce(0){$0+$1}
        return (product - sum)
    }
}
