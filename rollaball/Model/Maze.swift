//
//  Game.swift
//  rollaball
//
//  Created by Andrew Tokeley on 16/02/23.
//

import Foundation
import CoreGraphics

enum WallType: Int {
    case wallVertical = 0
    case wallHorizontal
    case wallBottomLeft
    case wallBottomRight
    case wallTopRight
    case wallTopLeft
    case wallRightJoin
    case wallLeftJoin
    case wallBottomJoin
    case wallTopJoin
    case space
}
class Maze {
    
    private var walls = [[WallType]]()
    
    init(walls: [[WallType]]) {
        self.walls = walls
    }
    
    static func loadLevel() -> Maze {
        var walls: [[WallType]] = [[WallType]]()
        
        if let levelPath = Bundle.main.path(forResource: "level1", ofType: "txt") {
            if let levelString = try? String(contentsOfFile: levelPath) {
                let lines = levelString.components(separatedBy: "\n")
                
                for (row, line) in lines.reversed().enumerated() {
                    for (column, letter) in line.enumerated() {
                        var rowTypes = [WallType]()
                        if letter == "x" {
                            rowTypes.append(.wallVertical)
                        } else {
                            rowTypes.append(.space)
                        }
                    }
                }
            }
        } else {
            walls = [
               [.wallTopLeft,.wallTopJoin, .space, .space],
               [.wallBottomLeft,.wallTopRight, .space, .wallVertical],
               [.space,.wallVertical, .space, .space],
               [.space,.wallVertical, .space, .space],
               [.space,.wallRightJoin, .wallHorizontal, .space],
               [.space,.wallVertical, .space, .space],
               [.space,.wallBottomJoin, .wallBottomRight, .space]
           ]
        }
        
        return Maze(walls: walls)
    }
        
    var rows: [[WallType]] {
        return walls
    }
    
}
