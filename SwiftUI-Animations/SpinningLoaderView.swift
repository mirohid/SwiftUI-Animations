//
//  SpinningLoaderView.swift
//  SwiftUI-Animations
//
//  Created by MacMini6 on 06/03/25.
//

import SwiftUI
struct SpinningLoaderView: View {
    @State private var isRotating = false

    var body: some View {
        Circle()
            .trim(from: 0.2, to: 1)
            .stroke(Color.blue, lineWidth: 5)
            .frame(width: 50, height: 50)
            .rotationEffect(.degrees(isRotating ? 360 : 0))
            .animation(Animation.linear(duration: 1).repeatForever(autoreverses: false), value: isRotating)
            .onAppear {
                isRotating = true
            }
    }
}
#Preview{
    SpinningLoaderView()
}
