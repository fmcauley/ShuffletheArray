//
//  DefragIpAddress.swift
//  ShuffletheArray
//
//  Created by Frank McAuley on 9/30/20.
//

import Foundation
class DefragIpAddress {
    func defangIPaddr(_ address: String) -> String {
        return address.replacingOccurrences(of: ".", with: "[.]")
    }
}
