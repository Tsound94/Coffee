//
//  Coffee.swift
//  Coffee
//
//  Created by Timothy Soundavong on 10/16/25.
//

import Foundation

struct Coffee: Hashable {
    var name: String
    var assetName: String
    var sizes: Sizes = .Small
    var milk: Milk = .Whole
    var toppings: Toppings = .Caramel
    var espresso: Int = 0
    var inIced: Bool = false
    var specialRequests: String?
    
    func calculatePrice() -> Double {
        var price = sizes.basePrice
        let taxRate = 0.06
        
        if milk == .Oat {
            price += 0.5
            if toppings == .Cinnamon {
                price += 0.5
            }
        }
        return price + (price * taxRate)

    }

}
