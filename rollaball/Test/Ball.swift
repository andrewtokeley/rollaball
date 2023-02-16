//
//  Ball.swift
//  rollaball
//
//  Created by Andrew Tokeley on 14/02/23.
//

import SwiftUI

struct Ball: View {
    @State private var moveOffset = CGSize.zero
    
    var body: some View {
        Circle()
            .fill(
                RadialGradient(gradient: Gradient(colors: [.white,.black]), center: .center, startRadius: 0, endRadius: 80)
            )
            .frame(width: 100, height: 100)
            .offset(moveOffset)
    }
    
    public func move(x: CGFloat, y:CGFloat) {
        
    }
}

struct Ball_Previews: PreviewProvider {
    static var previews: some View {
        Ball()
    }
}
