//
//  GlowingTextView.swift
//  SwiftUI-Animations
//
//  Created by MacMini6 on 06/03/25.
//

import SwiftUI
struct GlowingTextView: View {
    @State private var glow = false

    var body: some View {
        Text("Glowing Text")
            .font(.largeTitle)
            .bold()
            .shadow(color: glow ? Color.blue : Color.clear, radius: 10)
            .animation(Animation.easeInOut(duration: 1).repeatForever(autoreverses: true), value: glow)
            .onAppear {
                glow.toggle()
            }
    }
}
#Preview{
    GlowingTextView()
}
