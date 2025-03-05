//
//  SlidingTextAnimationView.swift
//  SwiftUI-Animations
//
//  Created by MacMini6 on 05/03/25.
//

import SwiftUI
struct SlidingTextAnimationView: View {
    @State private var offsetX: CGFloat = -300

    var body: some View {
        Text("Hello, SwiftUI!")
            .font(.largeTitle)
            .bold()
            .offset(x: offsetX)
            .onAppear {
                withAnimation(Animation.easeInOut(duration: 1.5).repeatForever(autoreverses: true)) {
                    offsetX = 300
                }
            }
    }
}
#Preview{
    SlidingTextAnimationView()
}
