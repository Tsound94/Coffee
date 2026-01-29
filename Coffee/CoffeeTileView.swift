//
//  CoffeeTileView.swift
//  Coffee
//
//  Created by Timothy Soundavong on 10/16/25.
//

import SwiftUI

struct CoffeeTileView: View {
    let coffee: Coffee
    var body: some View {
        VStack {
            Image(coffee.assetName)
                .resizable()
                .scaledToFit()
                .frame(width: 275, height: 200)

            Text(coffee.name)
                .font(.headline)
                .fontWeight(.semibold)
                .foregroundColor(.black)
        }
        .padding()
        .background(
            RoundedRectangle(cornerRadius: 16, style: .continuous)
                .fill(Color.customcolor.opacity(5))
        )
        .overlay(
            RoundedRectangle(cornerRadius: 16, style: .continuous)
                .stroke(Color.black.opacity(5), lineWidth: 4)
        )
    }
}
#Preview {
    CoffeeTileView (coffee:Coffee(name:"Cinnamon Soul", assetName:"Cinnamon Soul"))
}
