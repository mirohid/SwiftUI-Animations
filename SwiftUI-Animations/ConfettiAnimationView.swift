//
//  ConfettiAnimationView.swift
//  SwiftUI-Animations
//
//  Created by MacMini6 on 05/03/25.
//

import SwiftUI
struct ConfettiAnimationView: View {
    @State private var confetti = false

    var body: some View {
        ZStack {
            ForEach(0..<50, id: \.self) { i in
                Circle()
                    .frame(width: 50, height: 50)
                    .foregroundColor([.red, .blue, .green, .yellow].randomElement()!)
                    .offset(y: confetti ? 300 : -300)
                    .animation(
                        Animation.interpolatingSpring(stiffness: 50, damping: 5)
                            .delay(Double(i) * 0.1),
                        value: confetti
                    )
            }
        }
        .onTapGesture {
            confetti.toggle()
        }
    }
}
#Preview{
    ConfettiAnimationView()
}
