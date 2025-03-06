//
//  BouncingButtonView.swift
//  SwiftUI-Animations
//
//  Created by MacMini6 on 06/03/25.
//

import SwiftUI
struct BouncingButtonView: View {
    @State private var scale = false

    var body: some View {
        Button(action: {
            withAnimation(Animation.interpolatingSpring(stiffness: 100, damping: 5)) {
                scale.toggle()
            }
        }) {
            Text("Tap Me")
                .padding()
                .background(Color.blue)
                .foregroundColor(.white)
                .clipShape(Capsule())
                .scaleEffect(scale ? 1.2 : 1.0)
        }
    }
}
#Preview{
    BouncingButtonView()
}
