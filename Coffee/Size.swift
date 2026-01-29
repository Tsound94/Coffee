//
//  Size.swift
//  Coffee
//
//  Created by Timothy Soundavong on 10/23/25.
//

import Foundation
enum Sizes: String, CaseIterable {
    case Small
    case Medium
    case Large
    
    var basePrice: Double {
        switch self {
        case .Small:
            return 5.5
        case .Medium:
            return 7.5
        case .Large:
            return 8.5
        }
    }
}
