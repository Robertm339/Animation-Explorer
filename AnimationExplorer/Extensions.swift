//
//  Extensions.swift
//  AnimationExplorer
//
//  Created by Robert Martinez on 6/24/23.
//

import SwiftUI

extension CGFloat {
    func dp(_ places: Int) -> String {
        String(format: "%.\(places)f", self)
    }
}

extension Alignment {
    mutating func flip() {
        if self == .leading {
            self = .trailing
        } else {
            self = .leading
        }
    }
}
