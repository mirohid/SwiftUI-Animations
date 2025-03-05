//
//  PulsatingAnimationView.swift
//  SwiftUI-Animations
//
//  Created by MacMini6 on 05/03/25.
//

import SwiftUI
struct PulsatingAnimationView: View {
    @State private var pulse = false

    var body: some View {
        Circle()
            .frame(width: 100, height: 100)
            .scaleEffect(pulse ? 1.2 : 1.0)
            .opacity(pulse ? 0.5 : 1)
            .animation(
                Animation.easeInOut(duration: 1.0)
                    .repeatForever(autoreverses: true),
                value: pulse
            )
            .onAppear {
                pulse = true
            }
    }
}
#Preview {
    PulsatingAnimationView()
}
