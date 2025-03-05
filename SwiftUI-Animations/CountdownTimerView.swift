//
//  CountdownTimerView.swift
//  SwiftUI-Animations
//
//  Created by MacMini6 on 05/03/25.
//

import SwiftUI
struct CountdownTimerView: View {
    @State private var progress: CGFloat = 1.0

    var body: some View {
        VStack {
            Rectangle()
                .frame(width: progress * 200, height: 10)
                .foregroundColor(.red)
                .animation(.linear(duration: 5.0), value: progress)

            Button("Start Countdown") {
                progress = 0
            }
        }
    }
}
#Preview {
    CountdownTimerView()
}
