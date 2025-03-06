//
//  RotatingCubeView.swift
//  SwiftUI-Animations
//
//  Created by MacMini6 on 06/03/25.
//

import SwiftUI
struct RotatingCubeView: View {
    @State private var rotate = false

    var body: some View {
        RoundedRectangle(cornerRadius: 10)
            .frame(width: 100, height: 100)
            .foregroundColor(.purple)
            .rotation3DEffect(
                .degrees(rotate ? 360 : 0),
                axis: (x: 1, y: 1, z: 0)
            )
            .animation(Animation.linear(duration: 2).repeatForever(autoreverses: false), value: rotate)
            .onAppear {
                rotate = true
            }
    }
}
#Preview{
    RotatingCubeView()
}
