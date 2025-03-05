//
//  SpringAnimationView.swift
//  SwiftUI-Animations
//
//  Created by MacMini6 on 05/03/25.
//

import SwiftUI
struct SpringAnimationView: View {
    @State private var bounce = false

    var body: some View {
        Circle()
            .frame(width: 100, height: 100)
            .offset(y: bounce ? -300 : 300)
            .animation(.spring(response: 0.5, dampingFraction: 0.3), value: bounce)
            .onTapGesture {
                bounce.toggle()
            }
    }
}
#Preview{
    SpringAnimationView()
}
