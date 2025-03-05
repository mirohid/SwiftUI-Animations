//
//  ButtonPressAnimationView.swift
//  SwiftUI-Animations
//
//  Created by MacMini6 on 05/03/25.
//

import SwiftUI
struct ButtonPressAnimationView: View {
    @State private var isPressed = false

    var body: some View {
        Button(action: {
            isPressed.toggle()
        }) {
            Text("Press Me")
                .padding()
                .background(Color.blue)
                .foregroundColor(.white)
                .cornerRadius(10)
                .scaleEffect(isPressed ? 0.9 : 1.0)
                .animation(.spring(response: 0.3, dampingFraction: 0.5), value: isPressed)
        }
    }
}
#Preview {
    ButtonPressAnimationView()
}
