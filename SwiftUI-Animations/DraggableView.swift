//
//  DraggableView.swift
//  SwiftUI-Animations
//
//  Created by MacMini6 on 05/03/25.
//

import SwiftUI
struct DraggableView: View {
    @State private var dragOffset = CGSize.zero

    var body: some View {
        Circle()
            .frame(width: 100, height: 100)
            .foregroundColor(.purple)
            .offset(dragOffset)
            .gesture(
                DragGesture()
                    .onChanged { gesture in
                        dragOffset = gesture.translation
                    }
                    .onEnded { _ in
                        withAnimation(.spring()) {
                            dragOffset = .zero
                        }
                    }
            )
    }
}
#Preview{
    DraggableView()
}
