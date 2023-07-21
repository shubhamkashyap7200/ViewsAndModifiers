//
//  BreakBigViewsIntoSmall.swift
//  ViewsAndModifiers
//
//  Created by Shubham on 21/07/23.
//

import SwiftUI

struct CapsuleTextDesign: View {
    var text : String
    var body: some View {
        Text(text)
            .font(.largeTitle.bold())
            .padding()
            .background(Color.yellow)
            .clipShape(Capsule())

    }
}

struct BreakBigViewsIntoSmall: View {
    var body: some View {
        VStack(spacing: 10.0) {
            CapsuleTextDesign(text: "Hello")
                .foregroundStyle(.white)

            CapsuleTextDesign(text: "World")
                .foregroundStyle(.green)

        }
    }
}

#Preview {
    BreakBigViewsIntoSmall()
}
