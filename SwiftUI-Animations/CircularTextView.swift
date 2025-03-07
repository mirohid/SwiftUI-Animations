//
//  CircularTextView.swift
//  SwiftUI-Animations
//
//  Created by MacMini6 on 07/03/25.
//

import SwiftUI
struct CircularTextView: View {
    @State private var rotate = false

    var body: some View {
        VStack(spacing:90) {
            Text("🚀 SwiftUI 🚀")
                
            Text("🚀 Tech Exactly 🚀")
        }.rotationEffect(.degrees(rotate ? 360 : 0))
            .animation(Animation.linear(duration: 5).repeatForever(autoreverses: false), value: rotate)
            .onAppear {
                rotate = true
            }
    }
}
#Preview{
    CircularTextView()
}
