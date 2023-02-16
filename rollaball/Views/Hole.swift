//
//  Hole.swift
//  rollaball
//
//  Created by Andrew Tokeley on 14/02/23.
//

import SwiftUI

struct Hole: View {
    var body: some View {
        ZStack {
            Circle()
                .fill(.black)
                .frame(width: 38, height: 38)
        }
        .frame(width: 64, height: 64)
    }
}

struct Hole_Previews: PreviewProvider {
    static var previews: some View {
        Hole()
    }
}
