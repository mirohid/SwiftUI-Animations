//
//  FireworksEffectView.swift
//  SwiftUI-Animations
//
//  Created by MacMini6 on 06/03/25.
//

import SwiftUI
struct FireworksEffectView: View {
    @State private var explode = false

    var body: some View {
        ZStack {
            ForEach(0..<10, id: \.self) { i in
                Circle()
                    .frame(width: 50, height: 50)
                    .foregroundColor([.red, .blue, .green, .yellow].randomElement()!)
                    .offset(x: explode ? CGFloat.random(in: -100...100) : 0, 
                            y: explode ? CGFloat.random(in: -100...100) : 0)
                    .opacity(explode ? 0 : 1)
                    .animation(Animation.easeOut(duration: 1), value: explode)
            }
        }
        .onAppear {
            explode = true
        }
    }
}
#Preview{
    FireworksEffectView()
}
