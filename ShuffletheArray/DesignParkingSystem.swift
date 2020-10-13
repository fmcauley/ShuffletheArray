//
//  DesignParkingSystem.swift
//  ShuffletheArray
//
//  Created by Frank McAuley on 10/13/20.
//

import Foundation
class DesignParkingSystem {
    var big: Int
    var medium: Int
    var small: Int
    
    init(_ big: Int, _ medium: Int, _ small: Int) {
        self.big = big
        self.medium = medium
        self.small = small
    }
    
    func addCar(_ carType: Int) -> Bool {
        if carType == 1 {
            if self.big > 0 {
                self.big -= 1
                return true
            } else {
                return false
            }
        } else if carType == 2 {
            if self.medium > 0 {
                self.medium -= 1
                return true
            } else {
                return false
            }
        } else if carType == 3 {
            if self.small > 0 {
                self.small -= 1
                return true
            } else {
                return false
            }
        }
        return false
    }
}
