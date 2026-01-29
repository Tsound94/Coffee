//
//  CustomizationView.swift
//  Coffee
//
//  Created by Timothy Soundavong on 10/16/25.
//

import SwiftUI

struct CustomizationView: View {
    @State var coffees: Coffee
    @State var customerName: String = ""
    @State var showingSheet: Bool = false
    @State private var specialRequest: String = ""
    var body: some View {
        VStack {
                Image(coffees.assetName)
                    .resizable()
                    .scaledToFit()
            Text("(400 Calories)")
                .foregroundStyle(.togcolor)
                .fontWeight(.bold)
                
                Text ("Drink Size")
                    .fontWeight(.bold)
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .padding(.horizontal)
                Picker ("Sizes", selection: $coffees.sizes) {
                    ForEach(Sizes.allCases, id: \.self) {
                        Text ($0.rawValue)
                        
                    }
                }
                
                .padding(.horizontal)
                .pickerStyle(.segmented)
                Text("Milk")
                    .fontWeight(.bold)
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .padding(.horizontal)
                
                
                Picker("Milk", selection: $coffees.milk) {
                    ForEach(Milk.allCases, id: \.self) {
                        Text($0.rawValue)
                        
                    }
                }
                .padding(.horizontal)
                .pickerStyle(.segmented)
                Text("Toppings")
                    .fontWeight(.bold)
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .padding(.horizontal)
                
                Picker("Toppings", selection: $coffees.toppings) {
                    ForEach(Toppings.allCases, id: \.self) {
                        Text ($0.rawValue)
                                                  
                    }
                }
                .padding(.horizontal)
                .pickerStyle(.segmented)
            Stepper("Espresso Shots: \(coffees.espresso)", value: $coffees.espresso,
                    in: 0...4)
            .bold()
            .padding()
            
            Toggle("Iced", isOn: $coffees.inIced)
                .padding()
                .tint(.togcolor)
                .bold()
            
            TextField("Name", text: $customerName)
                .padding()
            
            TextField("Special Request", text: $specialRequest)
                .padding()
            
            Button("Review Order") {
                updateOrder()
                showingSheet.toggle()
            }
            .tint(.togcolor)
            .bold()
            .sheet(isPresented: $showingSheet) {
                OrderConfirmationView(coffees: coffees, customerName: customerName)
            }
        }
    }
    func updateOrder() {
        if specialRequest != "" {
            coffees.specialRequests = specialRequest
        }
    }
}

#Preview {
    CustomizationView(coffees: Coffee(
        name: "Cinnamon Soul", assetName: "Cinnamon Soul"))
}
