//
//  ProgressBarAnimationView.swift
//  SwiftUI-Animations
//
//  Created by MacMini6 on 05/03/25.
//

import SwiftUI
struct ProgressBarAnimationView: View {
    @State private var progress: CGFloat = 0

    var body: some View {
        VStack {
            Rectangle()
                .frame(width: progress, height: 10)
                .foregroundColor(.blue)
                .animation(.easeInOut(duration: 1.0), value: progress)

            Button("Load") {
                progress = progress == 200 ? 0 : 200
            }
            .padding(.top, 20)
        }
    }
}

#Preview{
    ProgressBarAnimationView()
}
