//
//  ContentView.swift
//  rollaball
//
//  Created by Andrew Tokeley on 13/02/23.
//

import SwiftUI

struct ContentView: View {
    
    var body: some View {
        ZStack {
            Color.gray
            VStack(spacing: 0) {
                HStack(spacing: 0) {
                    Image("wall-topleft")
                    Image("wall-horizontal")
                    Image("wall-horizontal")
                    Image("wall-horizontal")
                    Image("wall-horizontal")
                }
                HStack(spacing: 0) {
                    Image("wall-bottomleft")
                    Image("wall-horizontal")
                    Image("wall-bottomleft")
                        .rotationEffect(Angle.degrees(180))
                    Image("wall-bottomleft")
                        .rotationEffect(Angle.degrees(90))
                    Image("wall-horizontal")
                }
                HStack(spacing: 0) {
                    MazeSpacer()
                    MazeSpacer()
                    Image("wall-vertical")
                    Image("wall-bottomleft")
                    Image("wall-horizontal")
                }
            }
            VStack(spacing: 0) {
                HStack(spacing: 0) {
                    Player()
                    MazeSpacer()
                    MazeSpacer()
                    Hole()
                    MazeSpacer()
                }
                HStack(spacing: 0) {
                    MazeSpacer()
                    MazeSpacer()
                    Star()
                    MazeSpacer()
                    MazeSpacer()
                }
                HStack(spacing: 0) {
                    MazeSpacer()
                    MazeSpacer()
                    MazeSpacer()
                    MazeSpacer()
                    MazeSpacer()
                }
            }
                .offset(x: 32, y:32)
        }
        .ignoresSafeArea()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
