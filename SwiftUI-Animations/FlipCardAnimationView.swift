//
//  FlipCardAnimationView.swift
//  SwiftUI-Animations
//
//  Created by MacMini6 on 05/03/25.
//

import SwiftUI
struct FlipCardAnimationView: View {
    @State private var isFlipped = false

    var body: some View {
        ZStack {
            RoundedRectangle(cornerRadius: 15)
                .fill(isFlipped ? Color.blue : Color.red)
                .frame(width: 200, height: 300)
                .overlay(
                    Text(isFlipped ? "Back" : "Front")
                        .font(.largeTitle)
                        .foregroundColor(.white)
                )
                .rotation3DEffect(
                    .degrees(isFlipped ? 180 : 0),
                    axis: (x: 0, y: 1, z: 0)
                )
                .animation(.easeInOut(duration: 0.6), value: isFlipped)
        }
        .onTapGesture {
            isFlipped.toggle()
        }
    }
}
#Preview{
    FlipCardAnimationView()
}
