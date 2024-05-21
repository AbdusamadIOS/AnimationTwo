//
//  ArmView.swift
//  AnimationTwo
//
//  Created by Abdusamad Mamasoliyev on 21/05/24.
//

import SwiftUI

struct ArmView: View {
    
    @Binding var rotateArm: Bool
    
    var body: some View {
        Image("playerArm")
            .resizable()
            .aspectRatio(contentMode: .fit)
            .frame(width: 150, height: 150)
            .shadow(color: .gray, radius: 2, x: 0, y: 0)
            .rotationEffect(Angle.degrees(-35), anchor: .topTrailing)
            .rotationEffect(Angle.degrees(rotateArm ? 13 : 0), anchor: .topTrailing)
            .animation(Animation.linear(duration: 2))
            .offset(x: 65, y: -250)
    }
}

#Preview {
    ArmView(rotateArm: .constant(true))
}
