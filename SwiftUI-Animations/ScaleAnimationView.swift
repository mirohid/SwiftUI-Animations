//
//  ScaleAnimationView.swift
//  SwiftUI-Animations
//
//  Created by MacMini6 on 05/03/25.
//

import SwiftUI
struct ScaleAnimationView: View {
    @State private var isScaled = false

    var body: some View {
        Circle()
            .frame(width: 100, height: 100)
            .scaleEffect(isScaled ? 1.5 : 1.0)
            .animation(.easeInOut(duration: 0.5), value: isScaled)
            .onTapGesture {
                isScaled.toggle()
            }
    }
}

#Preview{
    ScaleAnimationView()
}
