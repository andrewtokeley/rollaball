//
//  Star.swift
//  rollaball
//
//  Created by Andrew Tokeley on 14/02/23.
//

import SwiftUI

struct Star: View {
    var body: some View {
        ZStack {
            Image(systemName: "star.fill")
                .frame(width: 38, height: 38)
                .foregroundColor(.yellow)
                .shadow(radius: 5)
        }
            .frame(width: 64, height: 64)
        
    }
}

struct Star_Previews: PreviewProvider {
    static var previews: some View {
        Star()
    }
}
