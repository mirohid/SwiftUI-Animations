//
//  RotationAnimationView.swift
//  SwiftUI-Animations
//
//  Created by MacMini6 on 05/03/25.
//

import SwiftUI

struct RotationAnimationView: View {
    @State private var rotationAngle: Double = 0

    var body: some View {
        Image(systemName: "arrow.right.circle.fill")
            .resizable()
            .frame(width: 100, height: 100)
            .rotationEffect(.degrees(rotationAngle))
            .animation(.easeInOut(duration: 1.0), value: rotationAngle)
            .onTapGesture {
                rotationAngle += 270
            }
    }
}

#Preview{
    RotationAnimationView()
}
