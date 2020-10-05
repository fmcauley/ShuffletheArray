//
//  SingleRowKeyboard.swift
//  ShuffletheArray
//
//  Created by Frank McAuley on 10/5/20.
//

import Foundation
class SingleRowKeyboard {
    func calculateTime(_ keyboard: String, _ word: String) -> Int {
        
        var dict = [String:Int]()
        //setup keyboard
        for x in 0..<keyboard.count {
            let char = keyboard.index(keyboard.startIndex, offsetBy: x)
            let str = String(keyboard[char])
            dict[str] = x
        }
        
        // search for word
        var tracker = 0
        var counter = 0
        for x in 0..<word.count {
            let char = word.index(word.startIndex, offsetBy: x)
            let letter = word[char]
            let str = String(letter)
           
            if let indexValue = dict[str] {
                counter += abs(indexValue - tracker)
                tracker = indexValue
            }
        }
        
        return counter
    }
}
