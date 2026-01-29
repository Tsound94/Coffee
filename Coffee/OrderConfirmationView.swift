//
//  OrderConfirmationView.swift
//  Coffee
//
//  Created by Timothy Soundavong on 10/16/25.
//

import SwiftUI

struct OrderConfirmationView: View {
    var coffees: Coffee
    let customerName: String
    var body: some View {
        
        VStack {
            Text ("Hi \(customerName)! \nYou ordered a \(coffees.sizes.rawValue) \(coffees.assetName) with \(coffees.milk.rawValue) Milk and \(coffees.toppings.rawValue ) on top.")
                  
            if coffees.specialRequests != nil {
                Text("Your special request is :\n\(String(coffees.specialRequests ?? ""))\nWe'll be happy to do that for you.")

                
                
            }
          Text ("The total will be $\(coffees.calculatePrice(),specifier: "%.2f").")
            
            HStack {
              
                
                Button ("Edit Order") {
                    
                }
                   
                
            Button ("Check Out") {
                
            
                    
                    
                }
            .padding()
            }
 
        }
        ZStack {
            Image(.logo)
                .resizable()
                .scaledToFit()
                .frame(width:175, height: 200)
            
        }
        
    }
}

#Preview {
    OrderConfirmationView(coffees:Coffee( name: "cinnamon soul", assetName: "Cinnamon Soul"), customerName: "Timothy")
}
