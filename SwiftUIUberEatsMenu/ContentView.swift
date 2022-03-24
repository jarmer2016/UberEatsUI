//
//  ContentView.swift
//  SwiftUIUberEatsMenu
//
//  Created by James Armer on 15/02/2022.
//

import SwiftUI

struct ContentView: View {
    @Environment(\.colorScheme) var currentMode
    var body: some View {
        NavigationView {
            List {
                NavigationLink(destination: RestaurantView()) {
                    Text("Miami - South Beach")
                }
                Text("Florida - West Beach")
                Text("Orlando - Central")
                Text("Los Angeles - South Beach")
                
            }
            .navigationTitle("Restaurants")
            
        }
        .accentColor(currentMode == .dark ? .white : .black)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
