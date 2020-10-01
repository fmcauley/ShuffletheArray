//
//  JewelsandStones.swift
//  ShuffletheArray
//
//  Created by Frank McAuley on 9/30/20.
//

import Foundation
class JewelsandStones {
    //J will be distinct use a set and compare with Stones.
    func numJewelsInStones(_ J: String, _ S: String) -> Int {
        var count = 0
        var set = Set<Character>()
        
        for x in 0..<J.count {
            let j = J.index(J.startIndex, offsetBy: x)
            set.insert(J[j])
        }
        
        for y in 0..<S.count{
            let s = S.index(S.startIndex, offsetBy: y)
            if set.contains(S[s]) {
                count += 1
            }
        }
        return count
    }
}
