//
//  ContentView.swift
//  SwiftUI-Animations
//
//  Created by MacMini6 on 05/03/25.
//

import SwiftUI

struct ContentView: View {
    @State private var animate = false

    var body: some View {
        VStack {
            Rectangle()
                .frame(width: 100, height: 100)
                .opacity(animate ? 0 : 1)
                .offset(x: animate ? 200 : 0)
                .animation(.easeInOut(duration: 1.0), value: animate)

            Button("Animate") {
                animate.toggle()
            }
            .padding(.top, 20)
        }
    }
}
#Preview{
    ContentView()
}
