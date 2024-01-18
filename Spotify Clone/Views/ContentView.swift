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
            // what page looks liike
            // added another view to work on this HomePage screen
            // shows the home page screen, cleans up code
            HomePage()
                .font(.title)
            // what icon on bottom looks like
                .tabItem {
                    VStack {
                        Image(systemName: "house.circle.fill")
                        Text("Home")
                    }
                }
                .tag(0)
            //This will follow suit of the first page, more specific comments can and will be added if need
            SearchPage()
                .font(.title)
                .tabItem {
                    VStack {
                        Image(systemName: "magnifyingglass.circle.fill")
                        Text("Search")
                    }
                }
                .tag(1)
        }
    }
}

#Preview {
    ContentView()
}
