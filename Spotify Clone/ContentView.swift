//
//  ContentView.swift
//  Spotify Clone
//
//  Created by Dylan Silva on 1/15/24.
//

import SwiftUI

struct ContentView: View {
    @State private var selection = 0
    var body: some View {
        TabView(selection: $selection) {
            Text("Potato")
                .font(.title)
                .tabItem {
                    VStack {
                        Image(systemName: "magnifyingglass.circle.fill")
                        Text("Search")
                    }
                }
                .tag(0)
            Text("Hello, world! Second Tab")
                .font(.title)
                .tabItem {
                    VStack {
                        Image(systemName: "house.circle.fill")
                        Text("Home")
                    }
                }
                .tag(1)
        }
    }
}

#Preview {
    ContentView()
}
