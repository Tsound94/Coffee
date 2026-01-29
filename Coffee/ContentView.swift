//
//  ContentView.swift
//  Coffee
//
//  Created by Timothy Soundavong on 10/16/25.
//

import SwiftUI

struct ContentView: View {
    let coffees: [Coffee] = [
        Coffee(name: "Cinnamon Soul", assetName: "Cinnamon Soul"),
        Coffee(name: "Caramel Drift", assetName: "Caramel Drift"),
        Coffee(name: "Cozy Cloud", assetName: "Cozy Cloud")
    ]
    var body: some View {
        
        Text("Cannelle")
            .fontDesign(.serif)
            .font(.largeTitle.weight(.bold))
            .foregroundColor(.black)
            .multilineTextAlignment(.center)
            .padding()
        
        NavigationStack {
            Text("Special Drinks")
                .bold()
                .font(.largeTitle)
                .padding(.horizontal)
                .frame(maxWidth: .infinity, alignment: .leading)
            ScrollView(.horizontal, showsIndicators: true) {
                
                
                
                HStack(spacing: 16) {
                    ForEach(coffees, id: \.self) { coffee in
                        NavigationLink {
                            CustomizationView(coffees: coffee)
                        } label: {
                            CoffeeTileView(coffee: coffee)
                            
                           
                        }
                    }
                }
                
                
                
                .padding(.horizontal)
                .padding(.bottom)
            }
        }
    }
}


#Preview {
    ContentView()
}
