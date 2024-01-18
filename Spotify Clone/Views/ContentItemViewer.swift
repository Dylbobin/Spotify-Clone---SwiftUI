//
//  ContentItemViewer.swift
//  Spotify Clone
//
//  Created by Dylan Silva on 1/17/24.
//

import SwiftUI

struct ContentItemViewer: View {
    //core graphics float
    var contentHeaderHeight: CGFloat = 380
    var body: some View {
        ZStack {
            VStack {
                //Create Background
                Spacer()
                    .frame(height: 50)
                
                Image("The Growlers - Chinese Fountain")
                // make image fit screen
                    .resizable()
                    .frame(width: 200, height: 200)
                Text("Title")
                    .foregroundColor(.white)
                Text("Subtitle")
                    .foregroundColor(Color(red: 0.5, green: 0.5, blue: 0.5))
                Spacer()
            }
                // lets crreate the scroll view
                //top spacer to show items behind
            ScrollView {
                VStack(spacing: 0) {
                    // moved scroll view here to expand over the HStack
                        HStack {
                            //expand the screen
                            Spacer()
                                .frame(height: contentHeaderHeight)
                                .background(LinearGradient(gradient: Gradient(colors: [
                                    Color.clear,
                                    Color.clear,
                                    Color.clear,
                                    Color.clear,
                                    Color.clear,
                                    Color.black
                                ]),startPoint: .top, endPoint: .bottom))
                        }
                //speacer for songs to scroll
                        VStack{
                            ForEach(0..<30) { item in
                                HStack {
                                    Text("This is an item")
                                        .foregroundColor(.white)
                                    // push items to the left (HSTACK)
                                    Spacer()
                                }
                            }
                        }
                        .background(.black)
                    /*Spacer()
                        .frame(width: 200)
                        .background(.blue) */
                }
                .background(.yellow.opacity(0.1))
                
            }
            
        }
    }
}

#Preview {
    ContentItemViewer()
}
