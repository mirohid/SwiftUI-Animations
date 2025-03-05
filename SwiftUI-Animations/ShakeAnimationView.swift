//
//  ShakeAnimationView.swift
//  SwiftUI-Animations
//
//  Created by MacMini6 on 05/03/25.
//

import SwiftUI
struct ShakeAnimationView: View {
    @State private var shake = false

    var body: some View {
        Text("Wrong Password!")
            .foregroundColor(.red)
            .offset(x: shake ? -10 : 0)
            .animation(
                Animation.easeInOut(duration: 0.1)
                    .repeatCount(5, autoreverses: true),
                value: shake
            )
            .onTapGesture {
                shake.toggle()
            }
    }
}

#Preview {
    ShakeAnimationView()
}
