//
//  ContentView.swift
//  rollaball
//
//  Created by Andrew Tokeley on 13/02/23.
//

import SwiftUI

struct ContentView: View {
    @State private var maze: Maze = Maze.loadLevel()
    
    var body: some View {
        ZStack {
            Color.gray
            
            VStack(spacing: 0) {
                ForEach(maze.rows, id: \.self) { row in
                    HStack(spacing: 0) {
                        ForEach(row, id: \.self) { wallType in
                            if wallType == .space {
                                MazeSpacer()
                            } else {
                                Wall(type: wallType)
                            }
                        }
                    }
                }
            }
        }
        .ignoresSafeArea()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
