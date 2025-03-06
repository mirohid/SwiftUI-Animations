//
//  TypingTextView.swift
//  SwiftUI-Animations
//
//  Created by MacMini6 on 06/03/25.
//

import SwiftUI
struct TypingTextView: View {
    let text = "Hello, SwiftUI!"
    @State private var displayText = ""

    var body: some View {
        Text(displayText)
            .font(.largeTitle)
            .bold()
            .onAppear {
                for (index, char) in text.enumerated() {
                    DispatchQueue.main.asyncAfter(deadline: .now() + Double(index) * 0.1) {
                        displayText.append(char)
                    }
                }
            }
    }
}
#Preview{
    TypingTextView()
}
