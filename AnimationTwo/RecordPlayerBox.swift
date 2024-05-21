//
//  RecordPlayerBox.swift
//  AnimationTwo
//
//  Created by Abdusamad Mamasoliyev on 21/05/24.
//

import SwiftUI

struct RecordPlayerBox: View {
    var body: some View {
        ZStack {
            Rectangle()
                .frame(width: 345, height: 345)
                .cornerRadius(10)
            Image("wood")
                .resizable()
                .frame(width: 325, height: 325)
                .shadow(color: .white, radius: 3, x: 0, y: 0)
        }
    }
}

#Preview {
    RecordPlayerBox()
}
