//
//  ViewAsPropertiesContentView.swift
//  ViewsAndModifiers
//
//  Created by Shubham on 21/07/23.
//

import SwiftUI

struct ViewAsPropertiesContentView: View {
    var motto1: some View {
        VStack {
            Text("Hail to the king!")
                .foregroundStyle(.blue)
        }
    }
    
    var motto2: some View {
        Text("Push it up babe")
            .foregroundStyle(.red)
    }

    
    @ViewBuilder var spells: some View {
        motto1
        motto2
    }
    
    
    
    
    var body: some View {
        VStack{
            spells
        }
    }
    
    
}

#Preview {
    ViewAsPropertiesContentView()
}
