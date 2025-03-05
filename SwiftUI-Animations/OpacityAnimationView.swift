//
//  OpacityAnimationView.swift
//  SwiftUI-Animations
//
//  Created by MacMini6 on 05/03/25.
//

import SwiftUI
struct OpacityAnimationView: View {
    @State private var isVisible = true

    var body: some View {
        VStack {
            if isVisible {
                Text("Hello, SwiftUI!")
                    .font(.largeTitle)
                    .opacity(isVisible ? 1 : 0)
                    .transition(.slide)
                    .animation(.easeInOut(duration: 1.0), value: isVisible)
            }
            
            Button("Toggle Visibility") {
                isVisible.toggle()
            }
        }
    }
}

#Preview{
    OpacityAnimationView()
}
