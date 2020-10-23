//
//  File.swift
//  ShuffletheArray
//
//  Created by Frank McAuley on 10/23/20.
//

import Foundation
class SortArray {
    func sortArrayByParity(_ A:[Int]) -> [Int] {
        var a = A
        var start = 0
        var end = a.count - 1
        
        while start < end {
            if a[start] % 2 > a[end] % 2 {
                a.swapAt(start, end)
            }
            
            if a[start] % 2 == 0 {
                start += 1
            }
            if a[end] % 2 == 1 {
                end -= 1
            }
            
        }
        return a
    }
}
