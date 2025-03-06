//
//  FloatingBalloonView.swift
//  SwiftUI-Animations
//
//  Created by MacMini6 on 06/03/25.
//

import SwiftUI
struct FloatingBalloonView: View {
    @State private var moveUp = false

    var body: some View {
        Image(systemName: "balloon.fill")
            .resizable()
            .frame(width: 50, height: 80)
            .foregroundColor(.red)
            .offset(y: moveUp ? -300 : 300)
            .opacity(moveUp ? 0 : 1)
            .animation(Animation.easeOut(duration: 3).repeatForever(autoreverses: false), value: moveUp)
            .onAppear {
                moveUp = true
            }
    }
}
#Preview{
    FloatingBalloonView()
}
