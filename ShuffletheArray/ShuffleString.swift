//
//  ShuffleString.swift
//  ShuffletheArray
//
//  Created by Frank McAuley on 10/1/20.
//

import Foundation

class ShuffleString {
    func restoreString(_ s: String, _ indices: [Int]) -> String {
        
        var arr = Array<String>(repeating: "", count: s.count)
        
        for x in 0..<s.count {
            let char = s.index(s.startIndex, offsetBy: x)
            let str = String(s[char])
            arr[indices[x]] = str
        }
        
        var output = ""
        for x in arr {
            output.append(x)
        }
        
        
        return output
    }
}
