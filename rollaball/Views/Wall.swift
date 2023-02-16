//
//  Wall.swift
//  rollaball
//
//  Created by Andrew Tokeley on 16/02/23.
//

import SwiftUI

struct Wall: View {
    private var wallType: WallType = .wallVertical
    
    init(type: WallType) {
        self.wallType = type
    }
    
    var body: some View {
        switch self.wallType {
        case .wallVertical:
            Image("wall-straight")
                .rotationEffect(Angle.degrees(90))
                .frame(width: 64, height: 64)
        case .wallHorizontal:
            Image("wall-straight")
                .frame(width: 64, height: 64)
        case .wallRightJoin:
            Image("wall-join")
                .frame(width: 64, height: 64)
        case .wallTopJoin:
            Image("wall-join")
                .rotationEffect(Angle.degrees(90))
                .frame(width: 64, height: 64)
        case .wallLeftJoin:
            Image("wall-join")
                .rotationEffect(Angle.degrees(180))
                .frame(width: 64, height: 64)
        case .wallBottomJoin:
            Image("wall-join")
                .rotationEffect(Angle.degrees(270))
                .frame(width: 64, height: 64)
        case .wallTopRight:
            Image("wall-corner")
                .rotationEffect(Angle.degrees(180))
                .frame(width: 64, height: 64)
        case .wallTopLeft:
            Image("wall-corner")
                .rotationEffect(Angle.degrees(90))
                .frame(width: 64, height: 64)
        case .wallBottomLeft:
            Image("wall-corner")
                .frame(width: 64, height: 64)
        case .wallBottomRight:
            Image("wall-corner")
                .rotationEffect(Angle.degrees(270))
                .frame(width: 64, height: 64)
        default:
            MazeSpacer()
        }
        
    }
}

struct Wall_Previews: PreviewProvider {
    static var previews: some View {
        Wall(type: .wallVertical)
    }
}
