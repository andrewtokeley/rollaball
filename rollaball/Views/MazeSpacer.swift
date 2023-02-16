//
//  WallSpacer.swift
//  rollaball
//
//  Created by Andrew Tokeley on 14/02/23.
//

import SwiftUI

struct MazeSpacer: View {
    var body: some View {
        Spacer().frame(width: 64, height: 64)
    }
}

struct WallSpacer_Previews: PreviewProvider {
    static var previews: some View {
        MazeSpacer()
    }
}
