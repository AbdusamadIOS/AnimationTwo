//
//  RecordView.swift
//  AnimationTwo
//
//  Created by Abdusamad Mamasoliyev on 21/05/24.
//

import SwiftUI

struct RecordView: View {
    
    @Binding var degress: Double
    @Binding var shouldAnimate: Bool
    
    var body: some View {
        Image("record")
            .resizable()
            .frame(width: 300, height: 300)
            .shadow(color: .gray, radius: 1, x: 0, y: 0)
            .rotationEffect(Angle.degrees(degress))
            .animation(Animation.linear(duration: shouldAnimate ? 60 : 0).delay(1.5))
        
    }
}

#Preview {
    RecordView(degress: .constant(2.0), shouldAnimate: .constant(true))
}
