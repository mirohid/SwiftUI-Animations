//
//  ColorChangeAnimationView.swift
//  SwiftUI-Animations
//
//  Created by MacMini6 on 05/03/25.
//

import SwiftUI
struct ColorChangeAnimationView: View {
    @State private var isRed = false

    var body: some View {
        Rectangle()
            .frame(width: 100, height: 100)
            .foregroundColor(isRed ? .red : .blue)
            .animation(.easeInOut(duration: 0.5), value: isRed)
            .onTapGesture {
                isRed.toggle()
            }
    }
}

#Preview{
    ColorChangeAnimationView()
}
