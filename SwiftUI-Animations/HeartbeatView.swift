//
//  HeartbeatView.swift
//  SwiftUI-Animations
//
//  Created by MacMini6 on 05/03/25.
//

import SwiftUI
struct HeartbeatView: View {
    @State private var scale = false

    var body: some View {
        Image(systemName: "heart.fill")
            .resizable()
            .frame(width: 100, height: 100)
            .foregroundColor(.red)
            .scaleEffect(scale ? 1.2 : 1.0)
            .animation(Animation.easeInOut(duration: 0.5).repeatForever(), value: scale)
            .onAppear {
                scale = true
            }
    }
}
#Preview{
    HeartbeatView()
}
