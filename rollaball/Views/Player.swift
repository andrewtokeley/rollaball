//
//  Player.swift
//  rollaball
//
//  Created by Andrew Tokeley on 14/02/23.
//

import SwiftUI

struct Player: View {
    var body: some View {
        ZStack {
            Circle()
                .fill(RadialGradient(gradient: Gradient(colors: [.white,.black]), center: .center, startRadius: 0, endRadius: 32))
                .frame(width: 32, height: 32)
        }
        .frame(width: 64, height: 64)
    }
}

struct Player_Previews: PreviewProvider {
    static var previews: some View {
        Player()
    }
}
