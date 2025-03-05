//
//  PulsingRingsView.swift
//  SwiftUI-Animations
//
//  Created by MacMini6 on 05/03/25.
//

import SwiftUI
struct PulsingRingsView: View {
    @State private var pulse = false

    var body: some View {
        ZStack {
            ForEach(0..<3, id: \.self) { i in
                Circle()
                    .stroke(Color.blue, lineWidth: 2)
                    .frame(width: 50 + CGFloat(i * 20), height: 50 + CGFloat(i * 20))
                    .opacity(pulse ? 0 : 1)
                    .animation(
                        Animation.easeOut(duration: 1.5)
                            .repeatForever(autoreverses: false)
                            .delay(Double(i) * 0.5),
                        value: pulse
                    )
            }
        }
        .onAppear {
            pulse = true
        }
    }
}
#Preview{
    PulsingRingsView()
}
