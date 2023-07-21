//
//  ContentView.swift
//  ViewsAndModifiers
//
//  Created by Shubham on 21/07/23.
//

import SwiftUI

struct ContentView: View {
//    @State private var usedRedText = false
    
    var body: some View {
        VStack {
            Text("Hello World")
            Text("Hello World")
                .font(.subheadline)
            Text("Hello World")
            Text("Hello World")
        }
        .font(.largeTitle.bold())
        .blur(radius: 5.0)
        
        
        
//            Button("Press Me", role: .destructive) {
//                // do nothing
//                usedRedText.toggle()
//            }
//            .foregroundColor(usedRedText == true ? .blue : .red)
//            .background(usedRedText == true ? Color.red : Color.blue)
    }
    
}

#Preview {
    ContentView()
}
