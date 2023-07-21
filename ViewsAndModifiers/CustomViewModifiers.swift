//
//  CustomViewModifiers.swift
//  ViewsAndModifiers
//
//  Created by Shubham on 21/07/23.
//

import SwiftUI


extension View  {
    func customTitleStyle() -> some View {
        modifier(CustomTitleView())
    }
    
    func customWatermark(with text: String) -> some View {
        modifier(CustomWatermarkView(text: text))
    }
}


struct CustomWatermarkView: ViewModifier {
    var text: String
    
    func body(content: Content) -> some View {
        ZStack(alignment: .bottomTrailing) {
            content
            
            Text(text)
                .font(.caption)
                .foregroundStyle(.white)
                .padding(5)
                .background(Color.black)
        }
    }
}

struct CustomShadowView: ViewModifier {
    func body(content: Content) -> some View {
        content
            .shadow(radius: 10.0)
    }
}

struct CustomTitleView: ViewModifier {
    func body(content: Content) -> some View {
        content
            .font(.largeTitle.bold())
            .foregroundStyle(.white)
            .padding()
            .background(.blue)
            .clipShape(RoundedRectangle(cornerRadius: 10.0))
    }
}


struct CustomViewModifiers: View {
    let watermarkOwner: String = "shubham kashyap"
    var body: some View {
        ZStack {
            Color.pink
                .ignoresSafeArea()
                .customWatermark(with: watermarkOwner)
            
            VStack {
                Color.blue
                    .frame(width: 200.0, height: 200.0)
                    .customWatermark(with: watermarkOwner)
                Text("Hello, World!")
                    .customTitleStyle()
            }
        }
    }
}

#Preview {
    CustomViewModifiers()
}
