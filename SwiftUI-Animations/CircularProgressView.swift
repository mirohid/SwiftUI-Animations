//
//  CircularProgressView.swift
//  SwiftUI-Animations
//
//  Created by MacMini6 on 05/03/25.
//

import SwiftUI
struct CircularProgressView: View {
    @State private var progress: CGFloat = 0.0

    var body: some View {
        VStack {
            ZStack {
                Circle()
                    .stroke(lineWidth: 10)
                    .opacity(0.3)
                    .foregroundColor(.gray)

                Circle()
                    .trim(from: 0.0, to: progress)
                    .stroke(
                        Color.blue,
                        style: StrokeStyle(lineWidth: 10, lineCap: .round)
                    )
                    .rotationEffect(.degrees(-90))
                    .animation(.easeInOut(duration: 1.0), value: progress)
            }
            .frame(width: 100, height: 100)

            Button("Start") {
                progress = progress == 1.0 ? 0.0 : 1.0
            }
            .padding(.top, 20)
        }
    }
}
#Preview{
    CircularProgressView()
}
